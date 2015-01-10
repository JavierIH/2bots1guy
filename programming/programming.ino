#define DXL_BUS_SERIAL1 1  //Dynamixel on Serial1(USART1)  <-OpenCM9.04
#define DXL_BUS_SERIAL2 2  //Dynamixel on Serial2(USART2)  <-LN101,BT210
#define DXL_BUS_SERIAL3 3  //Dynamixel on Serial3(USART3)  <-OpenCM 485EXP
/* Dynamixel ID defines */
/* Control table defines */
#define GOAL_POSITION 30



int pos9=512;
int pos10=512;
int pos11=512;
int pos12=512;
int pos13=512;
int pos14=512;
int pos15=512;
int pos16=512;
int pos17=512;
int pos18=512;

void setup() {
  
  Dxl.begin(1);/*
  Dxl.writeWord(9, 30, 512);
  Dxl.writeWord(10, 30, 512);
  Dxl.writeWord(11, 30, 512);
  Dxl.writeWord(12, 30, 512);
  Dxl.writeWord(13, 30, 512);
  Dxl.writeWord(14, 30, 512);
  Dxl.writeWord(15, 30, 512);
  Dxl.writeWord(16, 30, 512);
  Dxl.writeWord(17, 30, 512);
  Dxl.writeWord(18, 30, 512);/**/


}

void loop() {  
  pos9 = Dxl.readWord(9, 36); 
  pos10 = Dxl.readWord(10, 36); 
  pos11 = Dxl.readWord(11, 36); 
  pos12 = Dxl.readWord(12, 36); 
  pos13 = Dxl.readWord(13, 36); 
  pos14 = Dxl.readWord(14, 36); 
  pos15 = Dxl.readWord(15, 36); 
  pos16 = Dxl.readWord(16, 36); 
  pos17 = Dxl.readWord(17, 36); 
  pos18 = Dxl.readWord(18, 36);  
 
 //65535
  Dxl.writeWord(9, 30, pos10);
  Dxl.writeWord(10, 30, pos9);
  Dxl.writeWord(11, 30, pos14);
  Dxl.writeWord(12, 30, pos13);
  Dxl.writeWord(13, 30, pos12);
  Dxl.writeWord(14, 30, pos11);
  Dxl.writeWord(15, 30, pos16);
  Dxl.writeWord(16, 30, pos15);
  Dxl.writeWord(17, 30, pos18);
  Dxl.writeWord(18, 30, pos17);

  
}


