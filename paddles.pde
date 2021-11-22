boolean lol = false;
boolean lul = false;
int upNdown =400;
int powerUp = 0;
void paddle() {
  if(gameStart == true){
  
  fill(255,0,0);
  stroke(255);
  rect(50, upNdown, 20, 130);
   if(powerUp < 130){
    powerUp++;
   }
   
   fill(0,255,0);
   rect(50,upNdown,20,powerUp);
  if (keyPressed) {
     if(powerUp == 130 && key == 'd' ||powerUp == 130 && key =='D'){
       powerUp = 0;
     }
    if (lol == true) { //  if the w key is pressed, up goes the paddle
     
      upNdown = upNdown -20;
    }
    if (lul == true) {// opposite of w
      upNdown +=20;
      
    }
    if (upNdown > height-50 ) { // if the bar goes to low, just stop
      upNdown = height-50 ;
    }
    if (upNdown < 50) { //  same but if the paddle is too high

      upNdown = 50;
    }
  }
 }
  }
  
