PShape square;
PShape square2;

float angle = 45.0;

float x1 = 400.0;
float y1 = 0.0;

float x2 = -400;
float y2 = 0;

float e = 0.9;

float masa1 = 1.0;
float vel1_x = 20.0;
float vel1_y = 4.0;
float vel1_x1;
float vel1_y1;

float masa2 = 9.0;
float vel2_x = 5.0;
float vel2_y = -3.0;
float vel2_x1;
float vel2_y1;

void setup() {  
   size(800, 800);
   square = createShape(RECT, x1, y2, 60, -60);
   square.translate(0, height);
   square.rotate(radians(-angle));
   square.translate(width / 2, 0);
   shape(square, 0, 0);
   
   square2 = createShape(RECT, x2, y2, 60, -60);
   square2.translate(0, height);
   square2.rotate(radians(-angle));
   square2.translate(width / 2, 0);
   shape(square2, 0, 0);
}

void draw() {
 
  background(255);
  line(0, height, width, height - width*tan(radians(angle)));
  
  //Velocidad primer cuadrado (Derecha)
  square.translate(-vel1_x, 0);
  shape(square, 0, 0);
  
  //Velocidad segundo cuadrado (Izquierda)
  square2.translate(vel2_x, 0);  
  shape(square2, 0, 0);   
 
  //Primer Cuadrado (Arriba)
  vel1_x1= (((masa1 - (e * masa2))/(masa1 + masa2)) * vel1_x) + ((((1 + e ) * masa2)/(masa1 + masa2)) * vel2_x);
  vel1_y1= (((masa1 - (e * masa2))/(masa1 + masa2)) * vel1_y) + ((((1 + e ) * masa2)/(masa1 + masa2)) * vel2_y);
  
  //Segundo Cuadrado (Abajo)
  vel2_x1= ((((1 + e ) * masa1)/(masa1 + masa2)) * vel1_x) + (((masa2 - (e * masa1))/(masa1 + masa2)) * vel2_x);
  vel2_y1= (((masa1 - (e * masa2))/(masa1 + masa2)) * vel1_y) + ((((1 + e ) * masa2)/(masa1 + masa2)) * vel2_y);
}
