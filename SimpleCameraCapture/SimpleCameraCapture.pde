//
// SimpleCameraCapture: Show camera caputre image.
//  Variable cameranumber must be select as your camera.
//  Check available camera with GetCameraInfo or ShowCameraList
//  programs.
import processing.video.*;
Capture cam;
PImage cameraImage; 
int cameranumber=247;

void setup() {
  size(1024,576);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("No Camera Available.");
    exit();
  }
  //camera number depends on your hardware.
  // Use GetCameraInfo or ShowCameraList
  cam = new Capture(this, cameras[cameranumber]); 
  cam.start();
}
void draw() {
  cameraImage = cam.get();
  imageMode(CORNER);
  image(cameraImage, 0, 0);
}
void captureEvent(Capture c) {
  cam.read();
}