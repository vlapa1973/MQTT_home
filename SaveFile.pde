//*****************************************************
//  сохранение данных

void saveFile(String a, String b, String c) {
  String[] list = {};
  String[] list2 = {};

  list = loadStrings(filePath + year() + '/' + month() + '/' + day() + '/'
    + a + '/' + b + ".txt");

  if (list == null) {
    String[] temp = {};
    saveStrings(filePath + year() + '/' + month() + '/' + day() + '/'
      + a + '/' + b + ".txt", temp);
    list = loadStrings(filePath + year() + '/' + month() + '/' + day() + '/'
      + a + '/' + b + ".txt");
  }

  String D = "";
  String H = "";
  String M = "";
  String S = "";
  String Y = "";
  String N = "";
  Y += year();
  N += (month() < 10) ? "0" + month() : month();
  D += (day() < 10) ? "0" + day() : day();
  H += (hour() < 10) ? "0" + hour() : hour();
  M += (minute() < 10) ? "0" + minute() : minute();
  S += (second() < 10) ? "0" + second() : second();
  
  c = H + ';' + M + ';' + S + ';' + c;
  list2 = append(list, c);

  saveStrings(filePath + year() + '/' + month() + '/' + day() + '/'
    + a + '/' + b + ".txt", list2);
}
