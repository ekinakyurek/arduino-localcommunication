void getData() { 
  while (serial.available() > 0) {
    String inBuffer = serial.readString();   
    if (inBuffer != null) {
      String textToAppend = "Ekin: " + inBuffer + "\n";
      chat += textToAppend;
      chatBox.setText(chat);
    }
  }
}