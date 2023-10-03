void setup()
  {
      size(800,500);
      background(0);
      noLoop();
      textAlign(CENTER);
  }
  void draw()
  {
      //your code here
      int sum = 0;
      for(int x = 40; x < 700; x = x + 125){
        for(int y = 50; y < 400; y = y + 125){
          Die bob = new Die(x, y);
          bob.roll();
          bob.show();
          sum = bob.dienumber + sum;
        }
      }
      fill(255);
      text("Total: " + sum, 400, 450);
  }
  void mousePressed()
  {
    redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX;
      int myY;
      int dienumber;
     
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
          dienumber = (int)(Math.random() * 6) + 1;
      }
      void show()
      {
          fill(255);
          rect(myX, myY, 100, 100);
          fill(0);
          if(dienumber == 1){
            ellipse(myX + 50, myY + 50, 10,10);
          }
          else if(dienumber == 2){
            ellipse(myX + 50, myY + 70, 10, 10);
            ellipse(myX + 50, myY + 30, 10, 10);
          }
          else if(dienumber == 3){
            ellipse(myX + 30, myY + 30, 10, 10);
            ellipse(myX + 50, myY + 50, 10, 10);
            ellipse(myX + 70, myY + 70, 10, 10);
          }
          else if(dienumber == 4){
            ellipse(myX + 30, myY + 30, 10, 10);
            ellipse(myX + 30, myY + 70, 10, 10);
            ellipse(myX + 70, myY + 30, 10, 10);
            ellipse(myX + 70, myY + 70, 10, 10);
          }
          else if(dienumber == 5){
            ellipse(myX + 30, myY + 30, 10, 10);
            ellipse(myX + 30, myY + 70, 10, 10);
            ellipse(myX + 70, myY + 30, 10, 10);
            ellipse(myX + 70, myY + 70, 10, 10);
            ellipse(myX + 50, myY + 50, 10, 10);
          }
          else if(dienumber == 6){
            ellipse(myX + 30, myY + 50, 10, 10);
            ellipse(myX + 30, myY + 70, 10, 10);
            ellipse(myX + 30, myY + 30, 10, 10);
            ellipse(myX + 70, myY + 70, 10, 10);
            ellipse(myX + 70, myY + 50, 10, 10);
            ellipse(myX + 70, myY + 30, 10, 10);
          }
           
      }
  }
