//Library: use sketch/import library/ add library/ minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all funtions
AudioPlayer song1; //cretes a "Play List" variable, WAV, AIFF, AU, SND, MP3
//
void setup() {
  //size (500,600); //display geometry
  minim = new Minim(this);
  song1 = minim.loadFile("../Music Used/This_is_a_Jazz_Space.mp3");
  song1.play();
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
}//End keyPressed 
//
void mousePressed() {
} //End mousePressed
