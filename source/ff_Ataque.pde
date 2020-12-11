class Ataque { //------------------------------------------------------ VALORES
  float px, py, tam; 
  PImage golpe;
  boolean pegar;

  Ataque() { //------------------------------------------------------ VALORES INICIALES
    px =width/2;
    py =height/2;
    tam = width/10.66;
    golpe = loadImage("golpe.png");
    pegar = false;
  }

  void dibujo(float ppx, float ppy) { //------------------------------------------------------ DIBUJA SOLO CUANDO ATACA
    tam = width/10.66; // tamaño para el resize
    if (pegar) {
      image(golpe, px, py, tam/0.5, tam/0.5);
      py -=height/90;
    } else { //------------------------------------------------------ REPOSICION AL NO ATACAR
      px = ppx;
      py = ppy;
    }
  } 
  
  void pegar() { //------------------------------------------------------ BOTON ATACAR
    pegar = true;
  }
  
  void volver() { //------------------------------------------------------ BOTON RESTABLECER ATAQUE
    float volver = dist(ejecutar.jugar.mano.py, ejecutar.jugar.mano.py, py, py);
    if (volver >= height/3.42) { //------------------------------------------------------ DISTANCIA DE ATAQUE
      pegar = false;
    }
  }
}
