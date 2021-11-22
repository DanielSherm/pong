boolean gameStart = false;
String A = "Begin ?";
String txt= "tap to restart";
float x = 683; // ball place
float y = 384;//ball height
float xspeed = 5; // speed of the ball
float yspeed = 6; // speed of the y direction in the ball
float xdirection = 1;
int ydirection = 1;
void setup() {
  fullScreen();
  frameRate(40);
  smooth();
  fill(255);
}


void draw() {
  background(0);
  menu();
  if(gameStart == true){
  ball();
  paddles();
  paddle();
  scoreBoard();
  }

  fill(255);
  stroke(255);
}
  void keyPressed(){
  if (key == 'W' || key == 'w') lol=true;
  if (key == 'S' || key == 's')  lul = true;  
  if (key == 'o' || key == 'O') up=true;
  if (key == 'l' || key == 'L')  down = true;
  if (keyPressed) {
    if (key == ' ') {

      xdirection = 1;
      ydirection = 1;
      x = width/2;
      y = height/2;
      downNup = width/2;
      upNdown =height/2;
      score = 0;
      scoreBad = 0;
      winReset = false;
    }
  }
}
void keyReleased() {
  if (key == 'O' || key == 'o') up=false;
  if (key == 'L' || key == 'l') down=false;
  if (key == 'W' || key =='w') lol=false;
  if (key == 'S' || key == 's')  lul = false;
}

void mousePressed() {
  if (winReset == true) {
    start();
    x = width/2;
    y = height/2;
    downNup = height/2;
    upNdown =height/2;
    score = 0;
    scoreBad = 0;
    xspeed = 0;
    yspeed = 0;
    winReset = false;
    }
     if(mouseX> menuButtonX && mouseX< menuButtonX+150 &&mouseY >menuButtonY && mouseY <menuButtonY + 50 ){
    menuPressed = true;
   print("j"); 
  }
  if(mouseX> exitButtonX && mouseX< exitButtonX+150 &&mouseY >exitButtonY && mouseY <exitButtonY + 50 ){
    menuPressed = false;
  }
  if(menuPressed == false){
 if(mouseX> 683-150&& mouseX< 683+150 &&mouseY >height/2 && mouseY <height/2+ 150 ){
    gameStart = true;
    print("i");
 }
  }
  
     

}
