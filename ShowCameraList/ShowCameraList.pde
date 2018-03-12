//
// ShowCameraList: make cameras list 
// File "cameralist.txt" has list of cameras.
//

import processing.video.*;
PrintWriter fileio;

fileio = createWriter("cameralist.txt"); 
String[] cameras = Capture.list();
String s;

if (cameras.length == 0) {
  println("No Camera Available.");
  exit();
} else {
  for (int i=0; i < cameras.length; i++) {
    s = str(i) + ":" + cameras[i];
    println(s);
    fileio.println(s);
  }
}


fileio.close(); 
exit();