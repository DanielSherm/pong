int menuButtonX = 100;
int menuButtonY = 50;
float exitButtonX = 100;
float exitButtonY= 100;
int musicButtonX = 100;
int  busicButtonY = 25;
boolean volumeBox = false;
boolean menuPressed = false;
void menu(){
  if(gameStart == false){
  rect(menuButtonX,menuButtonY,150,50);
if(menuPressed == true){
   fill(255,0,0);
   rect(-5,-5,width+5,height+5);
   fill(255);
   rect(exitButtonX,exitButtonY,150,50);
  }
    
   if(menuPressed == false){
    rect(683-150,height/2,300,150);
  }
  
  }
}
   
   
   
