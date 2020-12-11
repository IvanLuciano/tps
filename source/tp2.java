import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class tp2 extends PApplet {

PFont texto;
PImage imagen1, imagen2, imagen3, imagen4, imagen5a, imagen5b ;
float px, py;
float efecto1x, efecto1y, efecto2x, efecto3x, efecto4x, efecto5ax, efecto5bx;
public void setup(){

px= width/4; 
py= height/6;
texto= loadFont("SitkaSubheading-Bold-48.vlw");
textFont(texto,28);

imagen1= loadImage("elangel01.jpg");
imagen2= loadImage("elangel02.jpg");
imagen3= loadImage("elangel03.jpg");
imagen4= loadImage("elangel04.jpg");
imagen5a= loadImage("elangel05a.png");
imagen5b= loadImage("elangel05b.png");
noLoop();
 efecto1x=width/1.7f;
 efecto1y=height/1.7f;
 efecto2x=width/4*2.3f;
 efecto3x=width/4*1.2f;
 efecto4x=width/5*4.2f;
 efecto5ax=width/4*3.1f;
 efecto5bx=width/4*0.9f;
}


public void draw(){
background(25);
    textAlign(CENTER,TOP); // aclaracion para el profe (iniciar con click)
    textSize(height/30);
    fill(75);
    text("(hacer click para empezar)",px*2,py-px/2.5f);
py = py -1.2f;
fill(255,255,0);
 textAlign(CENTER,CENTER);
 textSize(height/13);
 imageMode(CENTER);
 text("EL ÁNGEL",px*2,py); // SECUENCIA 1
image(imagen1,px*2,py+height/2,efecto1x,efecto1y);
 efecto1x= efecto1x-px/640;
 efecto1y= efecto1y-px/640;
 fill(255,225,0);
 textAlign(LEFT,CENTER);

 textSize(height/20);
text("Reparto:",px/2,py+height); // SECUENCIA 2
 
 textSize(height/30);
text("Lorenzo Ferro, como Carlos Robledo Puch.",px/2,py+height+height/20);
text("Chino Darín, como Ramón Peralta.",px/2,py+height+height/20*2);
text("Daniel Fanego, como José Peralta.",px/2,py+height+height/20*3);
text("Mercedes Morán, como Ana María Peralta.",px/2,py+height+height/20*4);
 // SECUENCIA 3
text("Peter Lanzani, como Miguel Prieto.",px/2,py+height+height/20*6);
text("Luis Gnecco, como Héctor Robledo Puch.",px/2,py+height+height/20*7);
text("Cecilia Roth, como Aurora Robledo Puch.",px/2,py+height+height/20*8);
text("Malena Villa, como Marisol / Magdalena.",px/2,py+height+height/20*9);

image(imagen2,efecto2x,py+height+height/20*15,width/2.3f,height/2.3f);
 efecto2x= efecto2x -px/900;
 
 textAlign(RIGHT,CENTER);
 textSize(height/30); // SECUENCIA 4
 text("Director: Luis Ortega",px*3.5f,py+height*2);
text("Directora artistica: Julia Freid.",px*3.5f,py+height*2+height/20);
text("Ayundante de direccion: Marilú Varsky.",px*3.5f,py+height*2+height/20*2);
text("Guión: Luis Ortega y Sergio Olguín.",px*3.5f,py+height*2+height/20*3);
 
  textSize(height/20);
text("Producción:",px*3.5f,py+height*2+height/20*6);
 textSize(height/30);
text("Hugo Sigma, Matías Mosteirín, Pablo Culell,",px*3.5f,py+height*2+height/20*7);
text("Leticia Cristi, Axel Kuschevatzky, Micaela Buye, Javier Braier,",px*3.5f,py+height*2+height/20*8);
text("Pedro Almodóvar, Agustín Almodóvar, Esther García Rodríguez.",px*3.5f,py+height*2+height/20*9);

 image(imagen3,efecto3x,py+height*2+height/20*16,width/2.3f,height/2.3f);
 efecto3x= efecto3x +px/900;
 
 textAlign(LEFT,CENTER);
 textSize(height/20); 
text("Productoras:",px/2,py+height*3+height/20*3);     // SECUENCIA 5
 textSize(height/30);
text("El Deseo, Underground Producciones, Telefe,",px/2,py+height*3+height/20*4);
text("Instituto Nacional de Cine y Artes Audiovisuales, K&S Films.",px/2,py+height*3+height/20*5);

image(imagen4,efecto4x,py+height*3+height/20*13,width/1.7f,height/1.7f);
 efecto4x= efecto4x -px/900;

 textAlign(LEFT,CENTER);
 textSize(height/20);
text("Musica:",px/2,py+height*4+height/20*2);       // SECUENCIA 6
  textSize(height/30);
text("Compuesta por: Moondog.",px/2,py+height*4+height/20*3); 

text("El extraño de pelo largo, por La joven guardia.",px/2,py+height*4+height/20*4);
text("Cada día somos más, por Billy Bond y La Pesada del Rock and Roll.",px/2,py+height*4+height/20*5);
text("Llegará la paz, por Pappo's Blues.",px/2,py+height*4+height/20*6);
text("No tengo edad, por Gigliola Cinquetti.",px/2,py+height*4+height/20*7);
text("In Vienna, por Moondog.",px/2,py+height*4+height/20*8);
text("La chica de la boutique, por Heleno.",px/2,py+height*4+height/20*9);
text("Corazón contento, por Palito Ortega.",px/2,py+height*4+height/20*10);
text("Mi tristeza es mía y nada más, por Leonardo Favio.",px/2,py+height*4+height/20*11);
text("Single Foot, por Moondog.",px/2,py+height*4+height/20*12);
text("La casa del sol naciente, por Palito Ortega.",px/2,py+height*4+height/20*13);
text("Milonga del ángel, por Ástor Piazzolla.",px/2,py+height*4+height/20*14);
 textAlign(CENTER,CENTER);
 textSize(height/7);
 text("FIN.",px*2,py+height*4.35f+height/20*15);

 imageMode(CENTER);
 image(imagen5a,efecto5ax,py+height*5+height/20*2,320,height/1.5f);
 efecto5ax = efecto5ax -px/1020;
 
 
 imageMode(CENTER);
 image(imagen5b,efecto5bx,py+height*5+height/20*2,320,height/1.5f);
  efecto5bx = efecto5bx +px/1020;
 
 textAlign(CENTER,CENTER);
 textSize(height/7);


}

public void mousePressed(){
loop();
}
  public void settings() { 
size(900,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "tp2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
