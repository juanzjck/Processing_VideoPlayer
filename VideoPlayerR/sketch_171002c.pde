import java.io.File;
import java.io.FilenameFilter;
import java.util.List;
import processing.video.Movie;
import controlP5.* ;
File dir; 
File [] files;
ControlP5 cp;
ControlP5 cp2;
VideoPlayerr reproductor;
String [] filesPath;
String[] fileImg;
int n=160;
int n2=0;
int n3;
PImage img;
int video=0;
Boolean flag=false;
String path;
 void settings() {
     size(1000,600);
    
 }
void setup() {
     noStroke();
     video=0;
     cp = new ControlP5(this);
     cp.addButton("play").setValue(0).setPosition(850,250).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp2= new ControlP5(this);
    
     cp.addButton("siguiente").setValue(3).setPosition(850,450).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp.addButton("anterior").setValue(4).setPosition(750,450).setSize(40,20).activateBy(ControlP5.RELEASE);
   
}
 
void draw() { 
  background(0);
 
 // video=Character.getNumericValue(key); //<>//
  
 fill(140);
  n=160+n3;
  n2=170+n3;
  // =======folder path===================//
  dir= new File(dataPath("/Users/juansalazar/Documents/proyect/easy-party/mirada_maquina/data/"));
  files= dir.listFiles();
     
  
  
  
  try{  
 for (int i = 0; i <= files.length - 1; i++)
      {
        String path = files[i].getAbsolutePath();
         
      

        
      if (path.toLowerCase().endsWith(".jpg")) {
        img = loadImage(path);
        image(img,100,n2,250,200);
          n2=n2+135;
        
        
         } else if (path.toLowerCase().endsWith(".mp4")) {
          text("puesto:"+i+":    "+path.toLowerCase(),120,n);
           n = n + 20;
       }
      } 
      //clear();
}catch(Exception e){}  
    text("El video a reproducir sera del,",750,400);
    text("puesto:"+video,800,420);  
  }

 public  void play(){
     flag=true;
          path="file://"+files[video].getAbsolutePath();
         if(flag==true){ 
           // reproductor=new VideoPlayerr(path);
             link(path);
               clear();
         }
  }
  public  void siguiente(){
       video=video+1;
         n3=n3-40;
         
  }
   public  void anterior(){
       n3=n3+40;
       video=video-1;
         
  }
   
  void keyPressed(){
    if(keyPressed){
      if(key=='r'){
       play();
      }
      if(key=='e'){
       
      }
    }
  
 }