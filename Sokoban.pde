int playerx = 0;
int playery = 0;
int tileloopx;
int tileloopy;

  int floorx = 10;
  int floory = 10;
void setup() {
  
  size(400,450);
  background(255);

};

void draw() {

 // background(255);
  
 for (int tileloopx = 0; tileloopx < 400; tileloopx = tileloopx + 50) { // two loops that generates the tiled gameboard 
   
 for (int tileloopy = 0; tileloopy < 450; tileloopy = tileloopy + 50) {  
   newTile(tileloopx,tileloopy);
 }
 }
 
  ellipseMode(CORNER); 
  //fill(125,0,0); 
  ellipse(playerx,playery,50,50);
  //fill(125,0,0);
}
  
void keyReleased() {
  
  if (key == CODED){
    
   
    if(playerx > 0){
     if (keyCode == LEFT) {
       playerx = playerx - 50;
     }
    }
   
    if(playerx < 350){
     if (keyCode == RIGHT) {
       playerx = playerx + 50;
     }
    }
  
    if(playery > 0){
     if (keyCode == UP) {
       playery = playery - 50; 
     }
    }
  
    if(playery < 400){
     if (keyCode == DOWN) {
       playery = playery + 50;
     }
  }
  
  }
}