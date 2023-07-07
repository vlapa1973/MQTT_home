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


MQTTClient client;

class Adapter implements MQTTListener {
  void clientConnected() {
    println("Client connected !");

    client.subscribe("#");
  }

  void messageReceived(String topic, byte[] payload) {
    println("new message: " + topic + " - " + new String(payload));
  }

  void connectionLost() {
    println("Connection lost !");
  }
}

Adapter adapter;

void setup() {
  adapter = new Adapter();
  client = new MQTTClient(this, adapter);
  //String a = "mqtt://" + userMQTT + ":" + paswdMQTT + "@" + urlMQTT;
  //println(a);
  client.connect("mqtt://" + userMQTT + ":" + paswdMQTT + "@" + urlMQTT, clientMQTT);
}

void draw() {
}

void keyPressed() {
  client.publish("/hello", "world");
}
