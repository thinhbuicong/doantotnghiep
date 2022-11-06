import cv2
import numpy as np
import os

from mrcnn import utils
from mrcnn import model as modellib

ROOT_DIR = os.path.abspath("'D:/File_doan/Mask_RCNN/project/")
MODEL_DIR = os.path.join(ROOT_DIR)
from mrcnn import tomato

# COCO_MODEL_PATH = os.path.join(ROOT_DIR, "mask_rcnn_coco.h5")
# if not os.path.exists(COCO_MODEL_PATH):
#     utils.download_trained_weights(COCO_MODEL_PATH)

model_path = os.path.join('mask_rcnn_tomato_0020.h5')
#------------------------------------------------------------------------------
class InferenceConfig(tomato.NCKH_Config):
    GPU_COUNT = 1
    IMAGES_PER_GPU = 1

config = InferenceConfig()
config.display()

model = modellib.MaskRCNN(
    mode="inference", model_dir=MODEL_DIR, config=config
)
model.load_weights(model_path, by_name=True)
class_names = ['grade_1', 'grade_2', 'grade_3']

#------------------------------------------------------------------------------
def random_colors(N):
    np.random.seed(1)
    colors = [tuple(255 * np.random.rand(3)) for _ in range(N)]
    return colors

colors = random_colors(len(class_names))
class_dict = {
    name: color for name, color in zip(class_names, colors)
}
#------------------------------------------------------------------------------
def apply_mask(image, mask, color, alpha=0.5):
    """apply mask to image"""
    for n, c in enumerate(color):
        image[:, :, n] = np.where(
            mask == 1,
            image[:, :, n] * (1 - alpha) + alpha * c,
            image[:, :, n]
        )
    return image
#------------------------------------------------------------------------------
def display_instances(image, boxes, masks, ids, names, scores):
    """
        take the image and results and apply the mask, box, and Label
    """
    n_instances = boxes.shape[0]

    if not n_instances:
        print('NO INSTANCES TO DISPLAY')
    else:
        assert boxes.shape[0] == masks.shape[-1] == ids.shape[0]

    for i in range(n_instances):
        if not np.any(boxes[i]):
            continue

        y1, x1, y2, x2 = boxes[i]
        label = names[ids[i]]
        color = class_dict[label]
        score = scores[i] if scores is not None else None
        caption = '{} {:.2f}'.format(label, score) if score else label
        mask = masks[:, :, i]

        image = apply_mask(image, mask, color)
        image = cv2.rectangle(image, (x1, y1), (x2, y2), color, 2)
        image = cv2.putText(
            image, caption, (x1, y1), cv2.FONT_HERSHEY_COMPLEX, 0.7, color, 2
        )
    return image
def readimage(red,green,blue):
    # rois: [N, (y1, x1, y2, x2)] detection bounding boxes
    # class_ids: [N] int class IDs
    red = np.array(red)
    green = np.array(green)
    blue = np.array(blue)
    row = red.shape[0]
    col = red.shape[1]
    rgb = np.zeros((row, col, 3), dtype='uint8')
    rgb[:,:,0] = red
    rgb[:,:,1] = green
    rgb[:,:,2] = blue
    results = model.detect([rgb], verbose=1)
    r = results[0]
    r1 = np.array(r['rois'][0])
    r2 = np.array(r['class_ids'][0])
    r1 = np.uint16(r1)
    r2 = np.uint16(r2)
    r1 = np.insert(r1,4,r2)
    return r1
#------------------------------------------------------------------------------
    

