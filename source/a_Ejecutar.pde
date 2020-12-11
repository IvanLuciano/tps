class Ejecutar {
  Pantalla pantalla;
  Juego jugar;

  Ejecutar() {
    pantalla = new Pantalla();
    jugar = new Juego();
  }

  void todo() {
    pantalla.visual(0, 1, " ");
    pantalla.dibujarBoton(0, width/2, height-height/10, 500, height/12);

    pantalla.visual(1, 2, "Te vas un fin de semana de vacaciones al \n monte tan solo con una mochila y tu carpa.");
    pantalla.dibujarBoton(1, width/2, height-height/10, 500, height/12);

    pantalla.visual(2, 3, "Al llegar, armas tu campamento\n junto a un bosque y un río.");
    pantalla.dibujarBoton(2, width/2, height-height/10, 500, height/12);

    pantalla.visual(3, 4, "Al llegar, armas tu campamento\n junto a un bosque y un río.");
    pantalla.dibujarBOpcion(3, width/2, height-height/6, 500, height/12, "Madera y rocas para hacer una\n fogata y calentarte durante la noche.", "Comida para\n recuperar energía.");


    // BUSCAR MADERA 
    pantalla.visual(31, 4, "Te adentras en el bosque en busca de\n madera y algunas rocas.");
    pantalla.dibujarBoton(31, width/2, height-height/10, 500, height/12);

    pantalla.visual(41, 6, "Encuentras una bayas dulces\n en un arbusto,\n ¿las recoges?");
    pantalla.dibujarBOpcion(41, width/2, height-height/6, 500, height/12, "SI", "NO");
    // TE ENCONTRAS BAYAS Y LAS AGARRAS
    if (pantalla.contador == 4411 || pantalla.contador == 55201) {
      jugar.ejecutar();

      if (keyPressed) {
        jugar.movimiento(keyCode);
      }
    }

    pantalla.visual(411, 6, "Pruebas una y parecen comestibles,\n recoges una cuantas y continuas \nexplorando.");
    pantalla.dibujarBoton(411, width/2, height-height/10, 500, height/12);

    pantalla.visual(5101, 5, "Recoges palos y rocas que encuentres\n por el piso y vuelves a tu \ncampamento.");
    pantalla.dibujarBoton(5101, width/2, height-height/10, 500, height/12);

    pantalla.visual(61, 9, "EMPIEZA A OSCURECERSE EL CIELO.");
    pantalla.dibujarBoton(61, width/2, height-height/10, 500, height/12);

    pantalla.visual(6101, 9, "Haces una fogata y disfrutas de\n tus bayas dulces antes de ir a dormir.");
    pantalla.dibujarBoton(6101, width/2, height-height/10, 500, height/12);
    // TE ENCONTRAS BAYAS Y NO LAS AGARRAS
    pantalla.visual(412, 5, "Recoges palos y rocas que encuentres\n por el piso y vuelves a tu \ncampamento.");
    pantalla.dibujarBoton(412, width/2, height-height/10, 500, height/12);

    pantalla.visual(5102, 10, "EMPIEZA A OSCURECERSE EL CIELO.");
    pantalla.dibujarBoton(5102, width/2, height-height/10, 500, height/12);
    //PESCAR?
    pantalla.visual(6102, 21, "No tienes nada para comer\n ¿ir a pescar al río?");
    pantalla.dibujarBOpcion(6102, width/2, height-height/6, 500, height/12, "SI", "NO");
    //SI
    pantalla.visual(6112, 8, "Pescas un pequeño pez, vuelves a tu \ncampamento ya muy cansado y lo cocinas \nen la fogata.");
    pantalla.dibujarBoton(6112, width/2, height-height/10, 500, height/12);
    //NO
    pantalla.visual(6122, 12, "Prendes la fogata y te vas a\n dormir hambriento.");
    pantalla.dibujarBoton(6122, width/2, height-height/10, 500, height/12);



    // BUSCAR COMIDA
    pantalla.visual(32, 2, "Te alejas un poco de tu campamento");
    pantalla.dibujarBoton(32, width/2, height-height/10, 500, height/12);
    // COMIDA ¿BOSQUE O RIO?
    pantalla.visual(42, 2, "Te alejas un poco de tu campamento");
    pantalla.dibujarBOpcion(42, width/2, height-height/6, 500, height/12, "Ir a pescar", "Buscar comida por el bosque");
    //COMIDA BOSQUE
    pantalla.visual(422, 6, "Empiezas a buscar comida en el \nbosque y ves a tu derecha una bayas,\nte acercas...");
    pantalla.dibujarBoton(422, width/2, height-height/10, 500, height/12);

    pantalla.visual(5201, 6, "Ves unas bayas dulces en un \narbusto, las tomas y continuas \ninvestigando..");
    pantalla.dibujarBoton(5201, width/2, height-height/10, 500, height/12);

    pantalla.visual(5211, 5, "Continuas investigando y encuentras unos\n palos y rocas  para hacer una fogata y\n vuelves a tu campamento.");
    pantalla.dibujarBoton(5211, width/2, height-height/10, 500, height/12);

    pantalla.visual(6201, 11, "Empieza a caer el sol...");
    pantalla.dibujarBoton(6201, width/2, height-height/10, 500, height/12);

    pantalla.visual(6211, 9, "Haces una fogata y\n comes las bayas dulces.");
    pantalla.dibujarBoton(6211, width/2, height-height/10, 500, height/12);
    //COMIDA RIO
    pantalla.visual(421, 7, "Te metes en el rio para cazar un pez...");
    pantalla.dibujarBoton(421, width/2, height-height/10, 500, height/12);

    pantalla.visual(5202, 7, "Logras atrapar un surubi y \nempiezas a caminar por la zona");
    pantalla.dibujarBoton(5202, width/2, height-height/10, 500, height/12);
    //HACER FOGATA?
    pantalla.visual(5212, 7, "Necesitaras una fogata para\n cocinar el pescado,\n ¿ir a buscar madera?");
    pantalla.dibujarBOpcion(5212, width/2, height-height/6, 500, height/12, "SI", "NO");
    //SI
    pantalla.visual(6212, 5, "Encuentras unos palos y rocas\n para hacer una fogata y\n vuelves a tu campamento.");
    pantalla.dibujarBoton(6212, width/2, height-height/10, 500, height/12);

    pantalla.visual(6222, 10, "COMIENZA A CAER EL SOL.");
    pantalla.dibujarBoton(6222, width/2, height-height/10, 500, height/12);

    pantalla.visual(6232, 8, "Haces una fogata para calentarte,\n cocinas tu pescado y\n disfrutas de tu sabrosa cena.");
    pantalla.dibujarBoton(6232, width/2, height-height/10, 500, height/12);
    //NO
    pantalla.visual(6213, 2, "Recorres el paisaje y no encuentras\n ni un solo palo, vuelves\n a tu campamento algo cansado.");
    pantalla.dibujarBoton(6213, width/2, height-height/10, 500, height/12);

    pantalla.visual(6223, 12, "Sin saber que hacer te \nhechas en tu carpa a \nrecuperar energías ");
    pantalla.dibujarBoton(6223, width/2, height-height/10, 500, height/12);

    pantalla.visual(6233, 11, "Se hace de noche.");
    pantalla.dibujarBoton(6233, width/2, height-height/10, 500, height/12);



    //NOCHE
    //NOCHE COMIDA
    pantalla.visual(7, 11, "ASCIENDE LA LUNA Y \nSALEN LAS ESTRELLAS.");
    pantalla.dibujarBoton(7, width/2, height-height/10, 500, height/12);

    pantalla.visual(701, 12, "Te diriges hacia tu carpa \ny te acuestas a dormir..");
    pantalla.dibujarBoton(701, width/2, height-height/10, 500, height/12);

    pantalla.visual(702, 12, "De repente, escuchas un\n ruido que proviene del bosque.");
    pantalla.dibujarBoton(702, width/2, height-height/10, 500, height/12);

    pantalla.visual(80, 12, "¿Ir a investigar al bosque?");
    pantalla.dibujarBOpcion(80, width/2, height-height/6, 500, height/12, "SI", "NO");

    pantalla.visual(801, 12, "Sales de la carpa con tu\n linterna pero se le agotaron\n las baterias.");
    pantalla.dibujarBoton(801, width/2, height-height/10, 500, height/12);

    pantalla.visual(90, 11, "¿Que haces?");
    pantalla.dibujarBOpcion(90, width/2, height-height/6, 500, height/12, "Fabricar una antorcha", "Quedarse en la carpa");

    pantalla.visual(901, 16, "Logras visualizar una cabaña \na lo lejos y te diriges allí,\n el llegar golpeas la puerta.");
    pantalla.dibujarBoton(901, width/2, height-height/10, 500, height/12);

    pantalla.visual(802, 13, "Te encuentras tranquilo, pero de\n repente vuelves a escuchar un gruñido");
    pantalla.dibujarBoton(802, width/2, height-height/10, 500, height/12);

    pantalla.visual(91, 14, "El gruñido cada vez está mas\n cerca de campamento, es de \nun oso furioso ¿Que haces?");
    pantalla.dibujarBOpcion(91, width/2, height-height/6, 500, height/12, "Sales corriendo y \nbuscas un lugar seguro.", "Te tapas con tu saco de dormir,\n y rezas por que no te ataque.");

    pantalla.visual(910, 16, "Logras ponerte a salvo y a lo lejos\n ves unas ventanas que desprenden\n luz, te diriges hacia allí");
    pantalla.dibujarBoton(910, width/2, height-height/10, 500, height/12);

    pantalla.visual(911, 15, "El oso irrumpe en tu carpa, destrozandola\n pero un guardabosques escondido entre los\n arboles le dispara y lo inmoviliza por un \nmomento, te grita \n¡Sigueme! y tu le haces caso.");
    pantalla.dibujarBoton(911, width/2, height-height/10, 500, height/12);
    //NOCHE NO COMIDA
    pantalla.visual(71, 12, "Te despiertas por el hambre y\n la fogata está apagada.");
    pantalla.dibujarBoton(71, width/2, height-height/10, 500, height/12);

    pantalla.visual(72, 16, "¡Estas muriendo lentamente! \n¿Que haces?");
    pantalla.dibujarBOpcion(72, width/2, height-height/6, 500, height/12, "Ves al guardabosques a lo lejos y\n le gritas para llamar su atencion", "Te quedas en tu carpa, \nesperando que pase la noche");

    pantalla.visual(7200, 12, "Te das cuenta que no fue buena \nidea quedarse en el lugar, estas en \nmuy mal estado, y piensas un plan \npara pedir ayuda");
    pantalla.dibujarBoton(7200, width/2, height-height/10, 500, height/12);

    pantalla.visual(7210, 16, "Logras ver al guardabosques a\n lo lejos y gritas ¡Auxilio!");
    pantalla.dibujarBoton(7210, width/2, height-height/10, 500, height/12);

    pantalla.visual(7201, 12, "El guardabosques no logra escucharte\n juntas fuerzas y decides seguirlo\n finalmente ves que entra en\n una cabaña y tocas la puerta");
    pantalla.dibujarBoton(7201, width/2, height-height/10, 500, height/12);
    //DESENLACE 
    pantalla.visual(10, 17, "El guardabosques abre la puerta\n y entras a la cabaña.");
    pantalla.dibujarBoton(10, width/2, height-height/10, 500, height/12);

    pantalla.visual(11, 18, "Tras recibirte, trae \nbocadillos de jamon y queso");
    pantalla.dibujarBoton(11, width/2, height-height/10, 500, height/12);

    pantalla.visual(12, 19, "Le cuentas tu historia al guardabosques,\n y pasas la noche en la cabaña.");
    pantalla.dibujarBoton(12, width/2, height-height/10, 500, height/12);

    pantalla.visual(13, 20, "Al dia siguiente despiertas en un\n cuarto, te despides del guardabosques y..");
    pantalla.dibujarBOpcion(13, width/2, height-height/6, 500, height/12, "Regresar a  tu hogar (fin)", "Pasar otro dia en el monte (re-play)");

    pantalla.visual(30000, 3, "Vuelves a tu campamento y te \nencuentras sin fogata ni alimento..");
    pantalla.dibujarBoton(30000, width/2, height-height/10, 500, height/12);

    pantalla.visual(131, 3, "Vuelves a tu campamento a recoger\n tus pertenencias y decides regresar\n a tu departamento en la ciudad.");
    pantalla.dibujarBoton(131, width/2, height-height/10, 500, height/12);

    pantalla.visual(14, 18, "Has terminado tu aventura y debes\n volver a tu rutina de trabajo.");
    pantalla.dibujarBoton(14, width/2, height-height/10, 500, height/12);

    pantalla.visual(14, 0, "Has terminado tu aventura y debes\n volver a tu rutina de trabajo.");
    pantalla.dibujarBoton(14, width/2, height-height/10, 500, height/12);

    pantalla.visual(11000, 0, "Alumno: Ivan Luciano.\nLegajo: 85085/6.\nComisión: 1 -8:00AM\nProfesor: José Luis Bugiolachi.\n\n\n\n\n Trabajo practico final TecnoMultimedia 1.  2020");
    pantalla.dibujarBoton(11000, width/2, height-height/10, 500, height/12);
  }

  void pasar() {
    if (keyCode==' ') {
      pantalla.funcionBoton(0, 1);
      pantalla.funcionBoton(1, 2);
      pantalla.funcionBoton(2, 3);



      pantalla.funcionBoton(31, 41);

      pantalla.funcionBoton(411, 5101);
      pantalla.funcionBoton(5101, 61);
      pantalla.funcionBoton(61, 6101);
      pantalla.funcionBoton(6101, 7);

      pantalla.funcionBoton(412, 5102);
      pantalla.funcionBoton(5102, 6102);
      pantalla.funcionBoton(6112, 7);
      pantalla.funcionBoton(6122, 71);



      pantalla.funcionBoton(32, 42);

      pantalla.funcionBoton(422, 55201);
      pantalla.funcionBoton(5201, 5211);
      pantalla.funcionBoton(5211, 6201);
      pantalla.funcionBoton(6201, 6211);
      pantalla.funcionBoton(6211, 7);

      pantalla.funcionBoton(421, 5202);

      pantalla.funcionBoton(5202, 5212);
      pantalla.funcionBoton(6212, 6222);
      pantalla.funcionBoton(6222, 6232);
      pantalla.funcionBoton(6232, 7);

      pantalla.funcionBoton(6213, 6223);
      pantalla.funcionBoton(6223, 6233);
      pantalla.funcionBoton(6233, 71);

      pantalla.funcionBoton(7, 701);
      pantalla.funcionBoton(701, 702);
      pantalla.funcionBoton(702, 80);
      pantalla.funcionBoton(801, 90);
      pantalla.funcionBoton(901, 10);
      pantalla.funcionBoton(802, 91);

      pantalla.funcionBoton(910, 10);
      pantalla.funcionBoton(911, 10);

      pantalla.funcionBoton(71, 72);      
      pantalla.funcionBoton(7200, 7210);
      pantalla.funcionBoton(7210, 7201);
      pantalla.funcionBoton(7201, 10);

      pantalla.funcionBoton(10, 11);
      pantalla.funcionBoton(11, 12);
      pantalla.funcionBoton(12, 13);

      pantalla.funcionBoton(30000, 3);
      pantalla.funcionBoton(131, 14);
      pantalla.funcionBoton(14, 11000);

      pantalla.funcionBoton(11000, 0);
    }

    if (keyCode==LEFT) {
      pantalla.funcionLEFT(3, 31);
      pantalla.funcionLEFT(41, 4411);
      pantalla.funcionLEFT(6102, 6112);

      pantalla.funcionLEFT(42, 412);
      pantalla.funcionLEFT(5212, 6212);
      pantalla.funcionLEFT(80, 801);
      pantalla.funcionLEFT(90, 901);
      pantalla.funcionLEFT(91, 910);

      pantalla.funcionLEFT(72, 7201);
      pantalla.funcionLEFT(13, 131);
    }
    if (keyCode==RIGHT) {
      pantalla.funcionRIGHT(3, 32);
      pantalla.funcionRIGHT(41, 412);
      pantalla.funcionRIGHT(6102, 6122);

      pantalla.funcionRIGHT(42, 422);
      pantalla.funcionRIGHT(5215, 6213);
      pantalla.funcionRIGHT(80, 802);
      pantalla.funcionRIGHT(801, 802);
      pantalla.funcionRIGHT(91, 911);

      pantalla.funcionRIGHT(72, 7200);
      pantalla.funcionRIGHT(13, 30000);
    }

    if (pantalla.contador == 4411 || pantalla.contador == 55201) {
      if (keyCode==' ') {
        jugar.ataque(' ');
      }
    }
  }
}
