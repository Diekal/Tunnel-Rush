void drawTunnel(){
  //camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)
  camera(mouseX, height/2, (height/2) / tan(PI/6), 
          width/2, height/2, 0,
          0, 1, 0);
  //Descomentar el siguiente para ver el tunel desde afuera
  camera();
  translate(width/2, height/2, -100+z);
  stroke(255);
  noFill();
  for(int i=0;i<10;i++){
    translate(0,0,-i*100);
    circle(0,0,10);
    translate(0,-70,0);
    println("theta",theta);
    rotate(radians(theta));
    polygon(0,0,100,8);
    rotate(-radians(theta));
    translate(0,70,0);
  }
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}//Ejemplo de Processing
