class Juego { //------------------------------------------------------ CANT BICHOS / FRUTOS
  int bichos = 12;
  int frutos = 6;
  int vidas, contador, matados, pasarpantalla;
  Entorno entorno;
  Personaje mano;
  Fruto [] baya = new Fruto [frutos];
  Enemigo [] bicho = new Enemigo [bichos]; 

  PImage victoria;
  boolean aviso;


  Juego() { //------------------------------------------------------ VALORES INICIALES 
    entorno = new Entorno();
    for (int i=0; i<frutos; i++) {
      baya[i] = new Fruto();
    }
    mano = new Personaje();
    for (int i=0; i<bichos; i++) {
      bicho[i] = new Enemigo();
    }
    victoria = loadImage("victoria.png");
    vidas = 5; //------------------------------------------------------ VIDAS
    aviso = false;

    pasarpantalla = 1;
  }

  void ejecutar() { //------------------------------------------------------ DIBUJOS
    entorno.dibujo();
    entorno.limites();

    for (int i=0; i<frutos; i++) {
      baya[i].dibujo();
    }

    mano.dibujo();
    if (mano.golpe.pegar == false) { //------------------------------------------------------ REESTABLECER TAM MANO
      mano.tam = width/10.66;
    }

    for (int i=0; i<bichos; i++) {
      bicho[i].movimiento(height/240); // velocidad del bicho
      bicho[i].girar();
    }

    matar();
    victoria();
    derrota();
    aviso();

    entorno.estadisticas();
  }

  void movimiento(int keyBoard) { //------------------------------------------------------ MOVIMIENTO PERSONAJE
    mano.movimiento(keyBoard);
  }

  void aviso() {//------------------------------------------------------ TUTORIAL ATAQUE
    if (!aviso) {
      textAlign(CENTER);
      fill(255);
      textSize(26);
      text("Presiona espacio para atacar", width/2, height/3);
      text("Presiona las flechas para moverte", width/2, height/4);
      if (keyPressed) {
        aviso = true;
      }
    }
  }

  void ataque(int keyBoard) {  //------------------------------------------------------ ATACAR
    if (keyBoard == ' ') {
      mano.tam = width/10.66; // tamaño para el resize
      mano.atacar();
    }
  }
  void matar () { //------------------------------------------------------ MATAR
    for (int i=0; i<bichos; i++) {
      float matar = dist(mano.golpe.px, mano.golpe.py, bicho[i].px, bicho[i].py);
      if (matar<=bicho[i].tam/2) {
        bicho[i].py = 3500;
        matados += 1;
      }
    }
  }

  void victoria() { //------------------------------------------------------ GANAR
    for (int i=0; i<frutos; i++) {
      float ganar = dist(mano.px, mano.py, baya[i].px, baya[i].py);
      if (ganar<=baya[i].tam/2) {
        baya[i].px = width+3500;
        contador +=1;
      }
      if (contador == frutos) {
        entorno.ganar();
        pasarpantalla=pasarpantalla+3;
        textAlign(CENTER);
        textSize(40);
        fill(255);
        text("¡Has conseguido la comida!\n -cambiaria a la pantalla siguiente- ", width/2, height/2);

        if (pasarpantalla >= 50) {

          mano.px = width/2;
          mano.py = height-height/8;
          vidas = 5;
          contador = 0;
          matados = 0;
          for (int j=0; j<frutos; j++) {
            baya[j].px = random(50, width-50);
            baya[j].py = random(50, height-height/3);
          }

          if (ejecutar.pantalla.contador==4411) {
            ejecutar.pantalla.contador = 411;
          }
          if (ejecutar.pantalla.contador== 55201) {
            ejecutar.pantalla.contador = 5201;
          }
        }
      }
    }
  }
  void derrota () {//------------------------------------------------------ PERDER
    for (int i=0; i<bichos; i++) {
      float perder = dist(mano.px, mano.py, bicho[i].px, bicho[i].py);

      if (perder<=bicho[i].tam-20) { // -------- PERDER VIDA
        vidas-=1;
        mano.px = width/2;
        mano.py = height-height/8;
      }
    }
    if (vidas<=0) { // -------- PERDER JUEGO
      mano.px = width/2;
      mano.py = height-height/8;
      textAlign(CENTER);
      textSize(40);
      fill(255);
      text("¡Perdiste! \n presiona espacio para reintentar", width/2, height/2);
      if (keyCode==' ') {
        vidas = 5;
        contador = 0;
        matados = 0;
        for (int i=0; i<frutos; i++) {
          baya[i].px = random(50, width-50);
          baya[i].py = random(50, height-height/3);
        }
        for (int i=0; i<bichos; i++) {
          bicho[i].px = random(50, width-50);
          bicho[i].py = random(height/1.35);
        }
      }
    }
  }
}
