int x = 100;
int speedx = 3;
int y = 200;
int speedy = 2; 
int z = 300; 
int speedz = 1;

void setup() {
  size(500, 500); 
}

void draw() { 
  background(56, 78, 95);
  stroke(0); 
  fungus(x, x, 130, 70);
  fungus(y, y, 100, 200);
  fungus(z, z, 200, 100);

  x = x + speedx; 
  if ((x > width) || (x < 0)) {
    speedx = speedx * -1;
  } 

  y = y + speedy; 
  if ((y > width) || (y < 0)) {
    speedy = speedy * -1;
  } 

  z = z + speedz; 
  if ((z > width) || (z < 0)) {
    speedz = speedz * -1;
  } 

  bubble(); 
  fill(0); 
  textSize(18); 
  text("We're not Pepe...", 340, 100); 
  text("We're fungus", 340, 120);

  sign(); 
  fill(0); 
  textSize(12); 
  text("Welcome to", 15, 420); 
  text("the swamp", 15, 440);
}

//fungus
void fungus(int x, int y, int diamX, int diamY) {
  fill(0, 100, 0);
  ellipse(x, y, diamX, diamY);
  fill(100, 0, 100);
  ellipse(x-20, y-20, diamX/4, diamY/4);
  ellipse(x+40, y-20, diamX/4, diamY/4);
} 

//speech bubble
void bubble() { 
  noStroke(); 
  fill(253); 
  ellipse(410, 100, 170, 110);
} 

//sign
void sign() { 
  fill(129, 96, 62); 
  rectMode(CENTER);
  rect(50, 420, 80, 60); 
  rect(50, 480, 10, 90);
}