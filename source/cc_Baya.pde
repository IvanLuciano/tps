class Fruto { //------------------------------------------------------ VALORES 
  float px, py, tam; 
  PImage baya;

  Fruto() { //------------------------------------------------------ VALORES INICIALES 
    px = random(50, width-50);
    py = random(50, height-height/3);
    tam = width/10.66;
    baya = loadImage("bayas.png");
  }

  void dibujo() { //------------------------------------------------------ DIBUJO
    tam = width/10.66; // tamaño para el resize
    imageMode(CENTER);
    image(baya, px, py, tam, tam);
  }
}
