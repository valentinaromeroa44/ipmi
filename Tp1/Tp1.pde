PImage iglu;

void setup(){
size (800, 400);
iglu = loadImage("iglu.jpg");
background(52, 152, 219 );
}

void draw(){
 fill(252, 252, 252);
 rect(0, 60, 800, 700);
color(0,255,0);
fill(0, 55, 71); //color base montaña
triangle(0, 250, 480, 20, 840, 250);
triangle(0, 320, 580, 15, 940, 250);
triangle(0, 250, 480, 30, 840, 250); //montaña del fondo

fill(52, 73, 94); //color base montaña
triangle(10, 250, 200, 3, 400, 250); //montaña
fill(252, 252, 252);

triangle(120, 120, 200, 10, 270, 100); //pico montaña
fill(52, 73, 94);
triangle(190, 250, 732, 10, 990, 250); // montaña derecha
fill(86, 101, 115); 
triangle(120, 250, 480, 80, 740, 250);

fill(93, 173, 226 );
rect(0, 215, 800, 700); //iglu 
fill(33, 97, 140 );
triangle(400, 325, 702, 240, 910, 325); //iglu pico derecho
triangle(0, 325, 84, 260, 830, 325); //iglu izquierdo
triangle(250, 325, 470, 235, 830, 325);

fill(115, 198, 182);
rect(0, 330, 800, 700);
image(iglu, 0, 0, 400, 400); 
}
