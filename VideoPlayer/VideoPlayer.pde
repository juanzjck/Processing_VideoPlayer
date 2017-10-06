
import processing.video.*;
public class VideoPlayer extends PApplet {
   Movie myMovie;
String path;
VideoPlayer(String pathfild) {
 
    super();
     path= pathfild;
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }
  

void settings()
{
   size(640, 360);
}

void setup() {
 
  myMovie = new Movie(this, path );
  myMovie.play();
 
}

void draw() {
  image(myMovie, 0, 0);
  
}

void movieEvent(Movie m) {
  
  m.read();
}
  
}