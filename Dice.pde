void setup()
  {
      size(300,300);
      noLoop();

  }
  void draw()
  {
    
    background((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
    int sum = 0;
    for(int y = 40; y <= 250; y += 75){
      for(int x = 40; x<= 250; x+= 75){
       Die testdie = new Die(x,y);
       //your code here
       testdie.roll();
       testdie.show(); 
       sum = sum + testdie.side; 
   }
  }
  fill(0);
       textSize(27);
       text("Total: "+sum,100,285);
}
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations 
     int side;
      int myX, myY;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          
          myX = x;
          myY = y;
      }
      void roll()
      {
       side = (int)(Math.random()*6)+1;
       //System.out.println(side);
      }
      void show()
      {
        fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
        rect(myX,myY,60,60);
        if(side == 1){
          fill(0);
        ellipse(myX+30,myY+30,15,15);
        } 
        else if(side == 2) {
          fill(0);
          ellipse(myX+15,myY+15,15,15);
          ellipse(myX+45,myY+45,15,15);
        }
        else if(side == 3) {
          fill(0);
          ellipse(myX+15,myY+15,15,15);
          ellipse(myX+45,myY+45,15,15);
          ellipse(myX+30,myY+30,15,15);
        }
        else if(side == 4) {
          fill(0);
          ellipse(myX+15,myY+15,15,15);
          ellipse(myX+45,myY+15,15,15);
          ellipse(myX+45,myY+45,15,15);
          ellipse(myX+15,myY+45,15,15);
        }
        else if(side == 5) {
          fill(0);
          ellipse(myX+15,myY+15,15,15);
          ellipse(myX+45,myY+15,15,15);
          ellipse(myX+30,myY+30,15,15);
          ellipse(myX+45,myY+45,15,15);
          ellipse(myX+15,myY+45,15,15);
        }
        else if(side == 6) {
          fill(0);
          ellipse(myX+10,myY+15,15,15);
          ellipse(myX+30,myY+15,15,15);
          ellipse(myX+50,myY+15,15,15);
          ellipse(myX+10,myY+45,15,15);
          ellipse(myX+30,myY+45,15,15);
          ellipse(myX+50,myY+45,15,15);
        }
          //your code here
      }
  }
