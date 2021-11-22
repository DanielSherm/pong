public int score = 0;
public int scoreBad = 0;
public boolean winReset = false;
void scoreBoard() {
  rectMode(CENTER);
  if (gameStart == true) {
    noFill();
    stroke(255);
    strokeWeight(4);
    rect(width/2, 60, 200, 100);
    noStroke();
    fill(225);
    textSize(30);
    String text =  "0" +score + ":" + "0" + scoreBad; // shows the score
    text(text, width/2 - 50, 70);
    if (score >= 10 && scoreBad < 10) { // what happens if someone wins
      fill(255,0,0);
      String txt = " player 1 WINS!"; // good guy wins
      textSize(55);
      text(txt, width/2, height/4);
      winReset = true;
    } else if (scoreBad >= 10 && score < 10) { // douche wins

      String txt = " player 2 WINS!"; // 
      textSize(55);
      text(txt, width/2, height/4);
      winReset = true;
    }
    
  }

}
