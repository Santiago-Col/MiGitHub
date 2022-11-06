float velocidad = 5.0;
float x = 0;
float y = 0;
float angulo= 60.0;
float g= -9.8;
float delta_t=0.01;
float Vy = 0.0;
float velocidad_x;
float velocidad_y;
float escala = 300;
int radio = 10;

void setup(){
  size(800, 800);  
  stroke(255);
  smooth();
  fill(255);
  
  velocidad_x = velocidad*cos(radians(angulo));
  velocidad_y = velocidad*sin(radians(angulo));
  Vy = velocidad_y;
}

void draw(){
  background(0);
  ellipseMode(RADIUS);
  
  float ny= (height-10) - y * (escala - 100);
  float nx = x * escala;
  ellipse(nx, ny, radio, radio);
    
  if (ny <= height){
    x = (velocidad_x * delta_t) + x;
    Vy = Vy + (g * delta_t);
    y = (Vy * delta_t) + y;        
  }   
  delay(10);
}
