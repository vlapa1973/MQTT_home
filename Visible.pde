// отображение

void visible(String s) {
  //  основной верхний и нижний контур
  strokeWeight(3);
  fill(#CFCFCF);
  rect(4, 5, 394, 530, fillet);
  //rect(4, 348, 394, 188, fillet);

  strokeWeight(1.2);
  //fill(#00FF7F);
  //rect(10, 10, 220, 80, fillet);
  fill(255, 0, 0);

  textSize(16);
  text(s, 10 + 10, 10 + 20);

}
