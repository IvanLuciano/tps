import processing.sound.*;

Ejecutar ejecutar;

void setup() {
  size(800, 600);
  surface.setResizable(true);
  ejecutar = new Ejecutar();
  sonidoset();
}

void draw() {
  ejecutar.todo();
  sonidodraw();
}

void keyPressed() {
  ejecutar.pasar();
  sonidokey();
}
