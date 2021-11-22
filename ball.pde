void ball() {


  if (gameStart == true) {

    fill(255);
    stroke(255);
    rect(x, y, 15, 15); // size of the ball
    
    x = x +  (xspeed * xdirection); // movement of the ball

    y = y+ (yspeed * ydirection);     // if the ball hits the ceiling or the floor reverse
    if (y > height -15 || y < 15) {
      ydirection = ydirection * -1;
    }
    if (x <= -15) {   //stop the game for a bit if the ball hits a wall
      xdirection = 1;
      x = width/2; 
      y = height/2;
      scoreBad +=1;
      delay(250);
    }
    if (x >= width) { //stop the game for a bit if the ball hits a wall

      x = width/2;
      y = height/2;
      xdirection = -1;
      xspeed = 5;
      yspeed = 6;
      score +=1;
      delay(250);
    }
    if (x > 50 - 5 && x < 70 + 5 && y > upNdown-50 - 5 && y < upNdown+130) {

      xdirection *= -1.1;
    }

    if (x > 1301 && x < 1321 && y > downNup - 50 - 5 && y < downNup +130) {

      xdirection *= -1.1;
    }
    if (winReset == true) {
      x = width/2;
      y = height/2;
      xspeed = 0;
      yspeed = 0;
      downNup = width/2;
      upNdown =height/2;
    } else {
      xspeed = 5;
      yspeed = 6;
    }
  }
}
