// Definicion Materiales
// Acrilico
:MIXT "NIST_Polymethyl Methacrylate" 1.19 3
   H 0.080541
   C 0.599846
   O 0.319613
:MATE_MEE "NIST_Polymethyl Methacrylate" 74*eV
// Concreto
:MIXT "NIST_Concrete, Barite (TYPE BA)" 3.35 9
   H 0.003585
   O 0.311622
   Mg 0.001195
   Al 0.004183
   Si 0.010457
   S 0.107858
   Ca 0.050194
   Fe 0.047505
   Ba 0.4634
:MATE_MEE "NIST_Concrete, Barite (TYPE BA)" 248.2*eV

// Matriz de Rotacion
:ROTM RM0 0. 0. 0.

// Volumen de aire
:VOLU world BOX 2750 3750 1750 G4_AIR

// Pared de Concreto
:SOLID ConcretoExt BOX 3130. 4130. 2300. //Pared exterior
:SOLID ConcretoInt BOX 2750. 3750. 1750. //Pared interior
:VOLU ParedConcreto SUBTRACTION ConcretoExt ConcretoInt RM0 0. 0. 0. "NIST_Concrete, Barite (TYPE BA)" 
:COLOR ParedConcreto  1 1 1 1
:PLACE ParedConcreto 1 world RM0 0. 0. 0.


//Fantoma
:SOLID CajaAcrilicaEXT BOX 150. 75. 150. //Exterior caja Acrilico
:SOLID CajaAcrilicaINT BOX 140. 70. 140. //Interior caja Acrilico
:VOLU CajaFantoma SUBTRACTION CajaAcrilicaEXT CajaAcrilicaINT RM0 0. 0. 0. "NIST_Polymethyl Methacrylate"
:PLACE CajaFantoma 1 world RM0 0. 280. 700.

//Volumen de agua
:VOLU contenedor_fantoma BOX 140. 70. 140. G4_WATER
:PLACE contenedor_fantoma 1 world RM0 0. 280. 700.
:COLOR contenedor_fantoma  0 0 1 1
:VOLU fantoma BOX 14.0 7.0 14.0 G4_WATER
:PLACE_PARAM fantoma 1 contenedor_fantoma PHANTOM 10 10 10 28. 14. 28.
