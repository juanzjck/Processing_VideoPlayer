import java.io.File;
import java.io.FilenameFilter;
import java.util.List;
import processing.video.Movie;
import controlP5.* ;
File dir; 
File [] files;
ControlP5 cp;
ControlP5 cp2;

String [] filesPath;
int n=20;
int n2=0;

int video=0;
Boolean flag=false;
String path;
PImage img;

void settings() {
     size(1000,600);
    
 }
void setup() {
     noStroke();
     cp = new ControlP5(this);
     cp.addButton("play").setValue(0).setPosition(850,250).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp2= new ControlP5(this);
     cp.addButton("mas").setValue(1).setPosition(850,200).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp.addButton("menos").setValue(2).setPosition(850,300).setSize(40,20).activateBy(ControlP5.RELEASE);
   
}
 
void draw() { 
  background(0);
 text("Escribe el numero de videp para reproducir",10,15);
  video=Character.getNumericValue(key); //<>//
  
  fill(140);
  n=n2+30;
  
  dir = new File(dataPath("/Users/juansalazar/Documents/proyect/easy-party/mirada_maquina/data/"));
  files = dir.listFiles();
  try{  
 for (int i = 0; i <= files.length - 1; i++)
      {
        
        
        String path = files[i].getAbsolutePath();

        
      if (path.toLowerCase().endsWith(".jpg")) {
        img = loadImage(path);
        image(img,100,n,150,100);
        n=n+120;
          
         //filesPath[i]=files[i].getAbsolutePath();
          //println(path.toLowerCase() + ".properties.ser", i);
          text(i+"--"+path.toLowerCase() + i,20,n);
       } else if (path.toLowerCase().endsWith(".mp4")) {
          
         //filesPath[i]=files[i].getAbsolutePath();
          //println(path.toLowerCase() + ".properties.ser", i);
           text(i+"--"+path.toLowerCase(),150,n);
           n = n + 20;
       }
      } 
      //clear();
}catch(Exception e){}  
    
    text(video,500,15);  

     
   
      
 
  }
  
 public void play(int value){
     flag=true;
          path="file://"+files[video].getAbsolutePath();
         if(flag==true){ 
           // reproductor=new VideoPlayerr(path);
             link(path);
               clear();
         }
  }
  public  void mas(int value){
       
         n2=n2-40;
         
  }
   public  void menos(int value){
       n2=n2+40;
         
  }
  void keyPressed(){
    if(keyPressed){
      if(key=='r'){
          flag=true;
          path="file://"+files[video].getAbsolutePath();
         if(flag==true){ 
           // reproductor=new VideoPlayerr(path);
             link(path);
               clear();
         }
      }
      if(key=='e'){
       
      }
    }
  
 }