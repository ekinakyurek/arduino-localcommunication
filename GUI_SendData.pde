import processing.serial.*;

Serial myPort;

public void initCommunication(){
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[0], 9600);
}

public void sendToArduino(String m){
  myPort.write(m);
}
