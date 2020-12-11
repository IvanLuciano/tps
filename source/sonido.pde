void sonidoset(){
  SoundFile ambi = new SoundFile(this, "ambi.mp3"); // SONIDO AMBIENTE
  ambi.loop();
}


void sonidodraw() {
  if (ejecutar.pantalla.contador == 4411 || ejecutar.pantalla.contador == 55201) { // SONIDO BICHOS
    if (ejecutar.jugar.contador == ejecutar.jugar.frutos) {
      SoundFile slap = new SoundFile(this, "coin.mp3"); 
      slap.play();
      slap.amp(0.25);
    }
  }
}

void sonidokey() {
  if (ejecutar.pantalla.contador == 4411 || ejecutar.pantalla.contador == 55201) { // SONIDO PEGAR
    if (keyCode==' ') {
      SoundFile slap = new SoundFile(this, "slap.mp3"); 
      slap.play();
      slap.amp(0.35);
    }
  }
}
