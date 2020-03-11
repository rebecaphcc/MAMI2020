int posx=90, posy=60,V;
int z = 270 - posx - posy;
float r;
void setup() {
  size(800, 600, P3D);
  frameRate(30);
  lights();
  noStroke();
 
}
void boxy(int posx,int posy){
  pushMatrix ();
  translate (width/2, height/2);
  rotateY (r += .008);
  rotateZ (r += .008);
  z = 270 - posx - posy;
  if (posx == posy && posy == z) {
    fill (#76FF03);
  } else {
    fill (#00B0FF);
}
  box(posx, posy, z);
  popMatrix();
}
void keyPressed(){
  if (key == CODED){
     if(keyCode == RIGHT){
     if(posx != 100){
     posx+=10;
     println(posx);
    }
  }else if (keyCode == LEFT){
     if (posx!=10){
     posx-=10;
     println(posx);
    }
  } else if (keyCode == UP){
     if (posy!=100){
     posy+=10;
     println(posx);
    }
   } else if (keyCode == DOWN){
       if (posy!=10){
       posy-=10;
       println(posx);
   }
  }
 }
}
void draw() {
  //interface
  background(#000000);
  int b=posx/10,h=posy/10,p=z/10;
  V = b*h*p;
  
  //texto
  fill(#FF80AB);
  textSize(16);
  text("Altura = "+h+"m", 30,260);
  text("Largura = "+b+"m", 30,300);
  text("Profundidade = "+p+"m",30,340);
  textSize(30);
  fill(#F50057);
  text("Volume = "+V+"m³", 245,50);
  text ("Perimetro = " + (b + h + p) + "m", 250, 570);
  
  if (posx == posy && posy == z) {
    fill (#76FF03);
    text("Volume = "+V+"m³", 245,50);
    fill(#00B0FF);
    textSize(26);
    text("Você atingiu o maior volume :D", 200,200);
 }
  //box
  lights();
  boxy(posx,posy);  
}
     
     
  
