//*****************************************************
//  вывод времени 
void TimeString() {
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
  time = H + ":" + M + ":" + S;
  timeArh = H + M + S;
  timeMonth = N;
  timeDate = D;
  timeExc = D + "_" + H + ":" + M + ":" + S;
  timeReport = Y + N + "_" + D;
}

//****************************************************
