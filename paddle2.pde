int downNup = 400;
int superMeter = 0;
int powerUpEvil = 0;
boolean up, down;
void paddles() {
  if(gameStart == true){
  
  fill(255,0,0);
  stroke(255);
  rect(width-50, downNup, 20, 130);
   if(powerUpEvil < 130){
    powerUpEvil++;
   }
   
   fill(0,255,0);
   rect(width -50,downNup,20,powerUpEvil);
   
  if (keyPressed ) {
         if(powerUpEvil == 130 && key == 'k' ||powerUp == 130 && key =='K'){
       powerUpEvil = 0;
     }
    if (up==true) { // if the o key is pressed then the paddle moves up

      downNup -=20; // becuase of the coordinate system the smaller the number, the higher up
    }

    if (down==true) { // same thing as the o key except it makes the paddle go down
      downNup +=20;
    }

    if (downNup > height-50) {  // if the paddle goes below 450 the paddle stops
      downNup = height - 50 ;
    }
    if (downNup < 50) { // if the paddle goe top it stops

      downNup = 50;
    }
  }
}
}
