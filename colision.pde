float centroX = 900;
float centroY = 100;
float centroancho = 80;
float centroaltura = 80;
float centrovelocidad=-5;

float reboteX = 100;
float reboteY = 100;
float reboteancho = 80;
float rebotealtura = 80;
float rebotevelocidad = 5;
void setup() {  
   size(1000, 1000);
 
}

void draw() {
 
  background(255);

  line(0, 180, 1040, 180);
  rect(centroX, centroY, centroancho, centroaltura);
  //condicional colision cuadro 1
if (reboteX + reboteancho + rebotevelocidad > centroX && 
      reboteX + rebotevelocidad < centroX + centroancho && 
      reboteY + rebotealtura > centroY && 
      reboteY < centroY + centroaltura) {
    rebotevelocidad *= -1;
  }
  //condicional colision cuadro 2
   if (centroX + centroancho + centrovelocidad > reboteX && 
      centroX + centrovelocidad < reboteX + reboteancho && 
      centroY + centroaltura > reboteY && 
      centroY < reboteY + rebotealtura) {
      centrovelocidad *= -1; 
  }

  

  reboteX += rebotevelocidad;
  centroX += centrovelocidad;
  
 rect(reboteX, reboteY, reboteancho, rebotealtura);
  
 
}
