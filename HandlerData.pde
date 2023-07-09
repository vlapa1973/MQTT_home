//*****************************************************
//  обработчик данных

void handlerData(String a, String sensorData) {
  a = a.substring(1, a.length());
  String sensorID = a.substring(0, a.indexOf("/"));
  println(sensorID);
  a = a.substring(a.indexOf("/") + 1, a.length());
  String sensorTopic = a;
  println(sensorTopic);
  println(sensorData);
  saveFile(sensorID, sensorTopic, sensorData);
}

//*****************************************************
