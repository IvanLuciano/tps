class Enemigo { //------------------------------------------------------ VALORES
  float px, py, vel, tam;
  PImage bichoD, bichoI;
  boolean girar;

  Enemigo() { //------------------------------------------------------ VALORES INICIALES
    bichoD = loadImage("bichoDerecha.png");
    bichoI = loadImage("bichoIzquierda.png");
    px = random(50, width-50);
    py = random(height/1.35);
    vel = random(1, 2.75); 
    tam = width/10.66;
  }
  void movimiento(float velocidad) { //------------------------------------------------------ MOVIMIENTO DE BICHO
    tam = width/10.66; // tamaño para el resize
    if (!girar) {
      px+=velocidad*vel;
      image(bichoD, px, py, tam, tam);
    } else {
      px-=velocidad*vel;
      image(bichoI, px, py, tam, tam);
    }
  }

  void girar() { //------------------------------------------------------ GIRO AL TOCAR BORDE
    if (px <= 50) {
      girar = false;
    }
    if (px >= width-50) {
      girar = true;
    }
  }
}
