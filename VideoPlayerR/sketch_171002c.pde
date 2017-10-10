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
int n=20;
int n2=0;

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
     cp.addButton("mas").setValue(1).setPosition(850,200).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp.addButton("menos").setValue(2).setPosition(850,300).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp.addButton("siguiente").setValue(3).setPosition(850,450).setSize(40,20).activateBy(ControlP5.RELEASE);
     cp.addButton("anterior").setValue(4).setPosition(750,450).setSize(40,20).activateBy(ControlP5.RELEASE);
   
}
 
void draw() { 
  background(0);
 
 // video=Character.getNumericValue(key); //<>//
  
 fill(140);
  n=n2+30;
  
  dir= new File(dataPath("/Users/juansalazar/Documents/proyect/easy-party/mirada_maquina/data/"));
  files= dir.listFiles();
  try{  
 for (int i = 0; i <= files.length - 1; i++)
      {
        String path = files[i].getAbsolutePath();
         
       if (path.toLowerCase().endsWith(".mp4") )
        {
          n=n+25;
          
         //filesPath[i]=files[i].getAbsolutePath();
          println(path.toLowerCase() + ".properties.ser", i);
          text(path.toLowerCase() + "peusto"+ i,20,n);
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
  public  void mas(){
       
         n2=n2-40;
         
  }
   public  void menos(){
       n2=n2+40;
         
  }
    public void siguiente(){
      video=video+1;
  }
  public void anterior(){
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