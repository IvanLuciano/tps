class Personaje { //------------------------------------------------------ VALORES
  float px, py, tam;
  PImage mano;
  Ataque golpe;
  Personaje() { //------------------------------------------------------ VALORES INICIALES
    mano = loadImage("mano.png");
    px = width/2;
    py = height-height/8;
    tam = width/10.66;
    golpe = new Ataque();
  }

  void dibujo() { //------------------------------------------------------ DIBUJO 
    imageMode(CENTER);
    image(mano, px, py, tam, tam+25);
    golpe.dibujo(px, py);
    golpe.volver();
  }

  void movimiento(int keyBoard) { //------------------------------------------------------ MOVIMIENTO MANO
    if (keyBoard==RIGHT) {
      px+=height/120;
    }
    if (keyBoard==LEFT) {
      px-=height/120;
    }
    if (keyBoard==DOWN) {
      py+=height/120;
    }
    if (keyBoard==UP) {
      py-=height/120;
    }
  }

  void atacar() { //------------------------------------------------------ ATAQUE
    golpe.pegar();
    tam = 0;
  }
}
