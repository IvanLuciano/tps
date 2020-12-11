class Entorno { //------------------------------------------------------ DECLARAR IMAGEN
  PImage fondo;
  Entorno() {//------------------------------------------------------ CARGAR IMAGEN
    fondo= loadImage("fondo.jpg");
  }

  void dibujo() { //------------------------------------------------------ FONDO
    imageMode(CORNER);
    image(fondo, 0, 0, width, height);
  }

  void limites() { //------------------------------------------------------ LIMITES
    if (ejecutar.jugar.mano.px <= ejecutar.jugar.mano.tam-width/20) {
      ejecutar.jugar.mano.px = ejecutar.jugar.mano.tam-width/20;
    }
    if (ejecutar.jugar.mano.px >= width-ejecutar.jugar.mano.tam+width/20) {
      ejecutar.jugar.mano.px = width-ejecutar.jugar.mano.tam+width/20;
    }
    if (ejecutar.jugar.mano.py <= ejecutar.jugar.mano.tam-height/20) {
      ejecutar.jugar.mano.py = ejecutar.jugar.mano.tam-height/20;
    }
    if (ejecutar.jugar.mano.py >= height-ejecutar.jugar.mano.tam+height/20) {
      ejecutar.jugar.mano.py = height-ejecutar.jugar.mano.tam+height/20;
    }
  }

  void estadisticas() { //------------------------------------------------------ STATS
    rectMode(CORNERS);
    fill(25, 25, 90, 125);
    rect(0, 0, 240, height*0.1);
    textAlign(CORNER);
    textSize(20);
    fill(255, 75, 75);
    text("Has conseguido: "+ejecutar.jugar.contador+"bayas", 0, 0+20);
    fill(125, 65, 0);
    text("Has eliminado: "+ejecutar.jugar.matados+"bichos", 0, 0+40);
    fill(0, 240, 55);
    text("Medicinas restantes: "+ejecutar.jugar.vidas, 0, 0+60);
  }

  void ganar() { //------------------------------------------------------ BACKGROUND AL GANAR
    imageMode(CORNER);
    image(fondo, 0, 0, width, height);
  }
}
