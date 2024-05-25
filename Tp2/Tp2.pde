PImage image; //Pantalla 1
PImage image2; //Pantalla 2
PImage image3; //Pantalla 3
int pantalla;
int tiempo; 
int suma;
int diametro;
boolean ultimaPantalla;
color colorDelBoton;
int py;
int miVariable = 1;


void setup() {
  size(640, 480);
  image = loadImage ("image.jpg"); //Pantalla 1
  image2 = loadImage ("image2.jpg"); //Pantalla 2
  image3 = loadImage ("image3.jpeg"); //Pantalla 3
  textSize(30);
  tiempo = frameCount/2;
  pantalla = 0;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(169, 50, 38 );  
}


 void draw() {
  if (pantalla == 0) {
 image (image, 0, 0, 640, 480); //Pantalla 1
    push();
    fill (242, 244, 244, mouseY);
    textSize ( 20 );
    miVariable = frameCount;
    text("Hogwarts Legacy es un juego de rol de acción inmersivo de mundo abierto ", 10 , 390); 
  text("Rol de acción de 2023 desarrollado por Avalanche Software", 15, 420); //textos Pantalla 1
  pop();
  
  
} else if (pantalla == 1) {
    image ( image2, 0, 0, 640, 480); //Pantalla 2
    push();
    fill ( 242, 244, 244, mouseX );
    text("Magos o Brujas", 300, 80); //texto Pantalla 2
    textSize(20);
    text("Personalizar \n sus \n propios \n personajes", 300, 200); //segundo texto Pantalla 2
    
    
    pop();
  } else if (pantalla == 2) {
   image(image3, 0, 0, 640, 480); //Pantalla 3
   fill (242, 244, 244, mouseY);
   textSize(20);
    text("Magia inmersiva:", 10, 360); //texto 1 Pantalla 3
    text("lanzar hechizos, preparar pociones", 50, 410); //texto 2 Pantalla 3
    text("volar escobas, domar y montar bestias mágicas", 50 , 430); //texto 3 Pantalla 3
     push(); 
     
    //CONDICIONES DE REINICIO
      fill(colorDelBoton);
      circle(590, 362, diametro);
      textSize(18);
      fill(0);
      text("Reiniciar", 560, 362);    
      pop();
    if (pantalla == 3) {
    image(image3, 0, 0, 640, 480);       
    }
  } 
///CONDICIONES DE TIEMPO PANTALLAS
  // tiempo += suma;
  if (ultimaPantalla == false) {
    tiempo = tiempo + suma;
  if (tiempo >= 30 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    } 
   }
  }
}
  
void mouseClicked() {
  push ();
  pantalla++;
  if (ultimaPantalla == true) {
    if (dist( 583 , 362 , mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
      pop ();
    }
  }
}
  //CONDICION DE BOTON
void mouseMoved() {
  if (ultimaPantalla == true) {
    if (dist(583 , 162 , mouseX, mouseY) < diametro/2) {
     
      colorDelBoton = color(225, 25, 19);
    }   else {
       push ();  
      colorDelBoton = color(169, 50, 38 );
        textSize ( 14);
        fill ( 25 , 0 ,0 );
         text("Reiniciar", 160, 462); 
         pop ();
    }   
  }
}
