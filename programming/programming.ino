#define DXL_BUS_SERIAL1 1  //Dynamixel on Serial1(USART1)  <-OpenCM9.04
#define DXL_BUS_SERIAL2 2  //Dynamixel on Serial2(USART2)  <-LN101,BT210
#define DXL_BUS_SERIAL3 3  //Dynamixel on Serial3(USART3)  <-OpenCM 485EXP
/* Dynamixel ID defines */
/* Control table defines */
#define GOAL_POSITION 30

Dynamixel Dxl(DXL_BUS_SERIAL1);

void setup() {
  
  Dxl.begin(3);
  //Dxl.jointMode(6); //jointMode() is to use position mode

}

void loop() {  
  //Turn dynamixel ID 1 to position 0  
  //int pos5 = Dxl.readWord(5, 36); 
  //int pos6 = Dxl.readWord(6, 36); 
  Dxl.writeWord(4, 30,512);
 // Dxl.writeWord(6, 30, 1024-pos5);
 // Dxl.writeWord(5, 30, 1024-pos6);
  delay(1000);
}


