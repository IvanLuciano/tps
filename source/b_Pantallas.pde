class Pantalla {
  PImage [] fotos = new PImage[22];
  PFont texto;
  int cd;
  int contador;

  Pantalla() {
    contador = 0;
    cd = 1;

    for (int i=0; i<fotos.length; i++) {
      fotos[i] = loadImage("foto"+i+".jpg");
    }
    texto= loadFont("MinionPro-Bold-48.vlw");
  }

  void visual(int estoy, int imagen, String texto) { //---------------- IMAGEN Y TEXTO POR PANTALLA
    if (cd>=1) {
      cd++;
      ///println(contador, cd);
    }

    if (contador == estoy) {
      imageMode(CENTER);
      image(fotos[imagen], width/2, height/2, width, height); // IMAGEN

      textAlign(CENTER, TOP);
      textSize(width*0.04);
      fill(255, 80, 80);
      text(texto, width/2, height/13);
    }
  }





  void dibujarBoton(int estoy, int px, int py, int ancho, int alto) { // ------------------ BOTONES POR PANTALLA
    if (contador==estoy) {
      rectMode(CENTER);
      fill(255, 80, 80, 150);
      rect(px, py, ancho, alto, 50);
      textAlign(CENTER, TOP);
      textSize(width*0.02);
      fill(0);
      text("Presiona espacio para continuar", width/2, height-height/8);
    }
  }

  void dibujarBOpcion( int estoy, int px, int py, int ancho, int alto, String left, String right) { // ------------------ BOTONES POR PANTALLA
    if (contador==estoy) {
      rectMode(CENTER);
      fill(255, 90, 90, 150);
      rect(px, py, ancho, alto, 50);
      textAlign(CENTER, TOP);
      textSize(width*0.03);
      fill(0);
      text("Apreta Left o Right", width/2, height-height/5);

      rectMode(CORNER);
      textSize(height*0.025);
      textAlign(CENTER, TOP);
      
      fill(255, 90, 90, 150);
      rect(0, height*0.89, width/2, height);
      fill(0);
      text(left, width*0.062*3.7, height*0.9);

      fill(255, 90, 90, 150);
      rect(width/2, height*0.89, width, height);
      fill(0);
      text(right, width-(width*0.062)*3.7, height*0.9);
    }
  }


  void funcionBoton(int estoy, int voy) {
    if (contador == estoy && cd >= 240) {
      contador = voy;
      cd=1;
    }
  }

  void funcionLEFT(int estoy, int voy) {
    if (contador == estoy && cd >= 240) {
      contador = voy;
      cd=1;
    }
  }

  void funcionRIGHT(int estoy, int voy) {
    if (contador == estoy && cd >= 240) {
      contador = voy;
      cd=1;
    }
  }
}
