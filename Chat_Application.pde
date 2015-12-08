import g4p_controls.*;

GTextField messageArea;  
GButton send;
GTextArea chatBox;

String chat = "";

String incomingMessage = "";

void setup() {
  background(#9AAFA6);
  size (800, 600);
  initCommunication();
  
  chatBox = new GTextArea(this, 20, 20, 760, 520);
  messageArea = new GTextField (this, 20, 550, 700, 30);
  send = new GButton(this, 725, 550, 70, 30, "SEND");
  chatBox.setTextEditEnabled(false);
}

void draw() {
  getData();
}

public void handleButtonEvents(GButton send, GEvent e) {
  processMessage();
}

void keyPressed() {
  if (key ==  ENTER) {
    processMessage();
  }
}

void processMessage()
{
  String message = messageArea.getText();
  if (message.length()>= 2) {
    String textToAppend = "User-1: " + messageArea.getText()+ "\n";
    chat += textToAppend;
    chatBox.setText(chat);
    sendToArduino(messageArea.getText());
    messageArea.setText("");
  }
}