//Library: use sketch/ import library/ add library/ minim
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
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
  //keyboard shortcuts
  //first play button
  //if ( key== 'H' || key== 'h' ) song1.play();


  //PLAY PAUSE Feature
  if ( key== 'H' || key== 'h' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else  if ( song1.position() >= song1.length()-song1.length()*1/5 ) {
    } else {
      song1.play();
    }
  }//End PLAY PAUSE Feature


  //second play button, loop ONCE
  if ( key== 'J' || key=='j' ) song1.loop(1);//paramter is number of repeates
  //Infinite loop
  if ( key== 'E' || key=='e' ) song1.loop(); //parameter is empty, means infinite looping (could be -1)
  //
  if ( key== 'M' || key=='m' ) { //MUTE Button
    //NOTE: Mute has NO built in pause or rewind 
    //NOTE: this MUTE algorithm is not smart
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( song1.isMuted() ) { 
      song1.unmute();
    } else { 
      song1.mute();
    }
  } //End MUTE Button
  //
  //fast forward and fast reverse
  //built in question, .isPlaying(), not necessary
  if ( key== 'F' || key=='f' ) song1.skip( 1000 ); //skip forward 1 second (1000 milliseconds)
  if ( key== 'R' || key=='r' ) song1.skip( -1000 ); //skip backwards 1 second, notice negative ( -1000 milliseconds)
  //
  //STOP Button
  if ( key== 'S' || key=='s' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind(); //cue song to play from beginning
    } else {
      song1.rewind(); //not playing means song is paused or song position is at the end
    }
  }//End STOP Button
  //
}//End keyPressed 
//
void mousePressed() {
} //End mousePressed
