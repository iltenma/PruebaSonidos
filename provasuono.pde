import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioInput in;
int estado;

void setup () {
  size (1000, 1000);
  estado = 0;
  
  minim = new Minim (this);
  in = minim.getLineIn ();
  background (255);
  frameRate (15);
  
 } 
 
 
 void draw () {
   background (255);
   stroke (0);
   float volumen = in.left.level();
   
   cambiarEstado (volumen);
   if (estado==0) background (0, 0, 255);
   else background (255, 0, 0);
   text (volumen, 200, 200);
} 

void cambiarEstado (float vol) {
  if (vol>0.09) estado = 1;
  else estado = 0;
  
}