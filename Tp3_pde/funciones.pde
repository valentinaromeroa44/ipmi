void cuadradodegrade(int x, int y) { 
fill(255);
stroke(1); 
square(x, y, 80); 

//cambio de colores y degradado
if (espar(contador)) { 
for (int i = 0; i < 42; i++) { stroke(max(0, verde  - i * 5), max(0, azul - i * 5), max(0, rojo - i * 5)); line(x + i, y, x + i, y + 39); 
}
}else {
for (int i = 0; i < 42; i++) {
stroke(max(0, verde - i * 5), max(0, azul - i * 5), max(0, rojo - i * 5)); line(x + 39 - i, y, x + 39 - i, y + 39); 
   }
 }
} 

boolean espar(int n){ 
return n % 2 == 0; 
}    



// color en cambio de tonalidades 
void colores(){
if (rojo == 255){
rojo = int(random(150,255)); verde = 255; 

}else if (verde == 255){
verde = int(random(200,255)); 

azul = 255; 
}else if (azul == 255){
azul = int(random(200,255)); 

rojo = 255; 
} 
} 

//cuadrados
void filas(){ 
posy = 0; 
contador = 0; 
for(int k = 0; k < 10; k++){ 
for (int j = 0; j < 10; j++){ 
cuadradodegrade(posx + j*40, posy);
}
contador = contador + 1; 
posy = posy + 40; 
}
}


//cambio mouse
void reiniciar(){ 
fill(0);
circle(30, 370, 50); 
fill(255); 
float d1 = dist(mouseX, mouseY, 30, 170); 
int r1 = 10/2; 

if (d1 < r1) {
azul = 155; 
rojo = 0; 
verde = 0; 

posx = 400; 
posy = 0; 
}
}
