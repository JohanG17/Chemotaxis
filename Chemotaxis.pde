 //declare bacteria variables here   
 Bacteria[] Juan;
void setup()   
 {     
   //initialize bacteria variables here
   size(500,500);
   frameRate(50);
   Juan = new Bacteria[50];
   for(int i = 0; i < Juan.length; i++){
   Juan[i] = new Bacteria();
 }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   for(int i = 0; i < Juan.length;i++){
   Juan[i].show();
   Juan[i].bacteria();}
   ellipse(250,250,50,50);
 }  
 class Bacteria    
 {     
   //lots of java!
   int myX, myY;
   Bacteria()
   {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
   }
   void bacteria()
 {
  myX = myX + (int)(Math.random()*2)+1;
  myY = myY + (int)(Math.random()*2)+1;
  if(myX >= 500){
  //myX = myX - (int)(Math.random()*2)+1;
  myX = (int)(Math.random()*20);
  if(myY >= 500){
  myY = (int)(Math.random()*350);
  }
  }
  
 }
   void show()
 {
   ellipse(myX,myY,15,15);
 }
 }    
