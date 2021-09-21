/*
Instructions:
Click to draw normally.
Press C to Clear the screen
Press 1 to make a circle
Press 2 to make a square
Press 3 to make a triangle
Press Q to set the drawing colour to Black
Press R to set the drawing colour to Red
Press G to set the drawing colour to Green
Press B to set the drawing colour to Blue
Press P to randomly generate a drawing
*/


//Variables Declared
int clearX = 0;
int colourRed = 0;
int colourGreen = 0;
int colourBlue = 0;
int numLines = 0;
int randomColour = 0;
//Setup
void setup() {
  size(1200, 1000);
  background(255, 255, 255);
}

void draw() { 
  //Click to draw
  if (mousePressed) {
        stroke(colourRed, colourGreen, colourBlue);
        fill(colourRed, colourGreen, colourBlue);
        strokeWeight(5);
        ellipse(mouseX, mouseY, 5, 5);
        strokeWeight(10);
        line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if (keyPressed) {
    //Press R to change colour to Red
    if (key == 'r') {
       colourRed = 255;
       colourGreen = 0;
       colourBlue = 0;
    }
    //Press G to change colour to green
    if (key == 'g') {
       colourRed = 0;
       colourGreen = 255;
       colourBlue = 0;
    }
    //Press B to change colour to blue
    if (key == 'b') {
       colourRed = 0;
       colourGreen = 0;
       colourBlue = 255;
    }
    //Press Q to change colour to black
    if (key == 'q') {
       colourRed = 0;
       colourGreen = 0;
       colourBlue = 0;
    }
    //Press 1 to draw a circle
    if (key == '1') {
       stroke(colourRed, colourGreen, colourBlue);
       fill(colourRed, colourGreen, colourBlue);
       ellipse(mouseX, mouseY, 20, 20);
    }
    //Press 2 to draw a square
    if (key == '2') {
       stroke(colourRed, colourGreen, colourBlue);
       fill(colourRed, colourGreen, colourBlue);
       square(mouseX - 10, mouseY - 10, 20);
    }
    //Press 3 to draw a triangle
    if (key == '3') {
       stroke(colourRed, colourGreen, colourBlue);
       fill(colourRed, colourGreen, colourBlue);
       triangle(mouseX, mouseY - 10, mouseX + 10, mouseY + 10, mouseX - 10, mouseY + 10);
    }
    //Clear Canvas
    if (key == 'c') {
       background(255, 255, 255);
    }
    //Randomly generate a drawing
    if (key == 'p') {
       strokeWeight(5);
       numLines = (int)(random(5, 15));
       while (numLines > 0) {
         numLines --;
         randomColour = (int)(random(4));
         if (randomColour == 0) {
           stroke(0, 0, 0);
           fill(0, 0, 0);
         }
         if (randomColour == 1) {
           stroke(255, 0, 0);
           fill(255, 0, 0);
         }
         if (randomColour == 2) {
           stroke(0, 255, 0);
           fill(0, 255, 0);
         }
         if (randomColour == 3) {
           stroke(0, 0, 255);
           fill(0, 0, 255);
         }
         line((int)(random(1200)) + 1,(int)(random(1000)) + 1,(int)(random(1200)) + 1,(int)(random(1000)) + 1);
       }
       delay(100);
    }
  }
}


      
