void getData() { 
  while (myPort.available() > 0) {
    String inBuffer = myPort.readString();   
    if (inBuffer != null) {
      String textToAppend = "User-2: " + inBuffer + "\n";
      chat += textToAppend;
      chatBox.setText(chat);
    }
  }
}
