//
// Get Camera Info : list available cameras fps=30 only
//

import processing.video.*;
String[] cameras = Capture.list();
if (cameras.length == 0) {
  println("No Cameras Available.");
  exit();
} else {
  println("Available Cameras:");
  for (int i = 0; i < cameras.length; i++) {
    String[] m1 = match(cameras[i], "fps=30");
    if (m1 != null) {
      print(i);
      print(",");
      println(cameras[i]);
    }
  }
}