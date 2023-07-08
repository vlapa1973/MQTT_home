/*********************************************************************************
 *
 *  MQTT - test
 *  20230707 - 20230707
 *  v.001
 *
 *********************************************************************************/
import mqtt.*;

String urlMQTT = "178.20.46.157";
String userMQTT = "mqtt2";
String paswdMQTT = "qwe1243";
String clientMQTT = "client_009";

String time, timeArh, timeMonth, timeDate, timeExc, timeReport; 
String filePath = "data/";
int fillet = 5;

MQTTClient client;
Adapter adapter;
PFont myFont;

/*********************************************************************************/
class Adapter implements MQTTListener {
  void clientConnected() {
    println("Client connected !");
    client.subscribe("#");
  }

/*********************************************************************************/
  void messageReceived(String topic, byte[] payload) {
    println(topic + " - " + new String(payload));
    String str = topic + " - " + new String(payload);
    visible(str);
  }

/*********************************************************************************/
  void connectionLost() {
    println("Connection lost !");
  }
}

/*********************************************************************************/
void setup() {
  myFont = createFont("Arial", 12);
  textFont(myFont);
  
  adapter = new Adapter();
  
  client = new MQTTClient(this, adapter);


size(403, 542);
  try {
    client.connect("mqtt://" + userMQTT + ":" + paswdMQTT + "@" + urlMQTT, clientMQTT);
  }
  catch (Exception e) {
    TimeString();
    String[] lines = {timeExc + " MQTT = " + " - does not exist"};
    saveStrings(filePath + "log_MQTT.txt", lines);
    exit();
  }
  
  
  
}

/*********************************************************************************/
void draw() {
}
