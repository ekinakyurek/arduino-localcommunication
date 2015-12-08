char id = '1';

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial1.begin(9600);

}

void loop() {
  // put yours main code here, to run repeatedly:
  commWithProcessingAndSend();
  commWithXbeeAndSend();
}

void commWithXbeeAndSend() {
  if (Serial1.available() > 0)
  {
    String xBeeMessage = Serial1.readString();
    char targetRobotNo = xBeeMessage.charAt(0);
    String message = xBeeMessage.substring(1);

    if (targetRobotNo == id) {
      Serial.print(message);
    }
  }
}

void commWithProcessingAndSend() {

  if (Serial.available() > 0) {

    String incomingMessage = Serial.readString();
    String goingMessage = "0" + incomingMessage;
    Serial1.print(goingMessage);
  }
}
