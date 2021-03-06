/*
 Propósito: Dibuja una ilusion óptica-geometrica
*/
void draw(){
  //crearCuadrados();
  crearCuadrados();
  crearRectas();
  crearBorde();
}

//--------------------------------------------------------------
void setup(){
  size(500,370);
  background(255);
}

void crearFilaDeCuadrados(int c1,int c2,int ancho,int alto){  
  fill(0);
  stroke(190);
  strokeWeight(3);
  
  for(int i=0; i<7; i+=1){
    rect(c1,c2,ancho,alto);
    c1=c1+80;
  }
}  

void crearCuadrados(){
  int c1; int c2;
  c1=20; c2 =5;
  for(int i=0; i<3; i+=1){
    crearFilaDeCuadrados(c1,c2,40,40);
    c1= c1+18;
    c2= c2+40;
  }
  crearFilaDeCuadrados(c1-36,c2,40,40);
  crearFilaDeCuadrados(c1-54,c2+40,40,40);
  crearFilaDeCuadrados(c1-36,c2+80,40,40);
  crearFilaDeCuadrados(c1-18,c2+120,40,40);
  crearFilaDeCuadrados(c1-36,c2+160,40,40);
  crearFilaDeCuadrados(c1-54,c2+200,40,40);
}

void crearRectas(){
  int p1=0,p2=45,p3=500,p4=45;
  for(int i=0; i<8; i+=1){
    line(p1,p2,p3,p4);
    p2=p2+40;
    p4=p4+40;
  }  
}

void crearBorde(){
  stroke(0);
  strokeWeight(8);
  noFill();
  rect(0,0,500,370);
}
