import java.io.File;
import java.io.FilenameFilter;
import java.util.List;
import processing.video.Movie;
File dir; 
File [] files;
VideoPlayerr reproductor;
String [] filesPath;
int n=20;
int video=0;
Boolean flag=false;
String path;
 void settings() {
     size(1000, 1000);
   
  
     
 }
void setup() {
 
  
   
}
 
void draw() { 
  background(0);
 text("Escribe el numero de videp para reproducir",10,15);
  video=Character.getNumericValue(key); //<>//
  
 fill(140);
  n=20;
  
  dir= new File(dataPath(""));
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
    
    text(video,500,15);  

     
   
      
 
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