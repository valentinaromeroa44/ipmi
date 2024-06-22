// https://youtu.be/5wPmwj_BYOk
PImage degradado;  
int azul, verde, rojo;
int posx, posy; 
int contador; 

 
void setup(){ 
size(800, 400); 
degradado = loadImage("degradado.JPG");

//colores
azul = 255;
rojo = 0; 
verde = 0; 

posx = 400;
posy = 0; 
}

void draw(){ 
background(200);
image(degradado, 5,0, 390, 620);

filas(); 
reiniciar(); 
} 

//cambio de colores
void mousePressed(){
colores(); 
}
