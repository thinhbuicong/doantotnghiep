import os
from pickletools import read_long1
from uuid import RFC_4122
import numpy as np
#------------------------------------------------------------------------------

# Directory pre-trained model paths
MODEL_DIR = 'D:/File_doan/Mask_RCNN/project/mask_rcnn_tomato_0020.h5'
# Import mrcnn libraries
import mrcnn.model as modellib
from tomato import NCKH_Config 
from mrcnn import visualize

#------------------------------------------------------------------------------
# Prepare to run Inference
class InferenceConfig(NCKH_Config):
    GPU_COUNT = 1
    IMAGES_PER_GPU = 1
    IMAGE_MIN_DIM = 720
    IMAGE_MAX_DIM = 1280
    DETECTION_MIN_CONFIDENCE = 0.85 
inference_config = InferenceConfig()
# Recreate the model in inference mode
model = modellib.MaskRCNN(mode="inference", 
                          config=inference_config,
                          model_dir=MODEL_DIR)
# Get path to saved weights
# Either set a specific path or find last trained weights
model_path = os.path.join(MODEL_DIR)
model.load_weights(model_path, by_name=True)

#------------------------------------------------------------------------------

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