// Khai bao cac thu vien su dung
#include <SPI.h>
#include <Ethernet.h>
#include <Servo.h>
#include "MgsModbus.h" 

Servo svr;  // khoi tao bien dieu khien
MgsModbus Mb;

// Cai dat cac thong so dia chi mang cua Arduino
byte mac[] = {0x90, 0xA2, 0xDA, 0x0E, 0x94, 0xB5 };
IPAddress ip(192, 168, 0, 2);
IPAddress gateway(192, 168, 0, 10);
IPAddress subnet(255, 255, 255, 0);

void setup()
{
  Ethernet.begin(mac, ip, gateway, subnet); 
  Mb.MbData[0] = 0; //40001 // dia chi nhan bit khi qua loai 1
  Mb.MbData[1] = 0; //40002 // dia chi nhan bit khi qua loai 2
  Mb.MbData[2] = 0; //40003 // dia chi nhan bit khi qua loai 3
  svr.attach(3); // khai bao pin dieu khien servo
}

void loop()
{
  int amx0 = Mb.MbData[0];
  int amx1 = Mb.MbData[1];
  int amx2 = Mb.MbData[2];
  
  if (bitRead(amx0,0)){ svr.write(0);}
  else if (bitRead(amx1,0)){ svr.write(90);}
  else if (bitRead(amx2,0)){ svr.write(180);}
  delay(500);
  // Chay chuong trinh Modbus Slave tu thu vien MgsModbus
  Mb.MbsRun();
}

