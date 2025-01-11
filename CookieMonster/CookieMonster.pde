int cookieCount = 0 ;

void setup() {
  size(1500, 1000);
  background(50,143,168);
  frameRate(5);
}

void draw() {
//  drawCookie(250,250,250);
//  drawCookie(100,100,150);
  drawCookie(400,400,40);
  
  // Loop that runs 100 times per draw cycle (which runs at the framerate per second)
  for(int i = 0 ; i <= 100 ; i++){
    // Create random coordinates and random size for each cookie we want to draw
    float randomX = random(0, 1500);
    float randomY = random(0, 1000);
    float randomSize = random(10, 100);
    
    // Draw the randomly generated cookies
    drawCookie(randomX, randomY, randomSize);
    cookieCount++;
  }
  
  // Create a black background (rectangle) for the text counter
  fill(0);
  rect(5, 53, 500, 60);
  
  // Set the textSize and text color to white, so the text is visible on the black rectangle we created.
  textSize(50);
  fill(255);
  text("Cookie Count: "+cookieCount, 10 , 100);
  
}

void drawCookie(float x, float y, float size){
  fill(135, 97, 51);
  circle(x, y, size);
  fill(36,24,10);
  //middle circle
  circle(x - (size * .12), y + (size * .12),(size * .12));
  //circle(190,190,(size * .12));
  circle(x - (size * .24), y - (size * .12),(size * .12));
  //circle(300,300,(size * .1));
  circle(x + (size * .2), y + (size * .16),(size * .12));
  //square(270, 210,(size * .12));
  square(x + (size * .08), y - (size * .16),(size * .12));
  



}


//int x = 5
//float y = 2.3
//String n = "Emily"
//boolean b = true
//char c = 'A'

int add(int x, int y){
  int result = x + y;
  return result;
}
