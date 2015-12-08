import processing.serial.*;

Serial serial;

public void initCommunication(){
  printArray(Serial.list());
  serial = new Serial(this, Serial.list()[0], 9600);
}

public void sendToArduino(String m){
  serial.write(m);
}
