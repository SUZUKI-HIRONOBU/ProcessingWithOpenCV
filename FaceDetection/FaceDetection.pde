//
// FaceDetection: Simple Face Detection.
// Detect face and put red rectangle on it.
// Variable cameranumber and window size must be set suitable value 
// on your hardware.
//

import processing.video.*;
import gab.opencv.*;
import java.awt.*;
Capture cam;
PImage cameraImage; 
OpenCV cv;
int cameranumber=275;
Rectangle[] box;
void setup() {
  size(640, 480);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("No Camera Available.");
    exit();
  } else {
    cam = new Capture(this, cameras[cameranumber]);  
    cam.start();
  }
  cv = new OpenCV(this, width, height);
  // Other XML files can be found from 
  // https://github.com/opencv/opencv/tree/master/data/haarcascades
  cv.loadCascade("haarcascade_frontalface_alt.xml");
}
void draw() {
  background(0); 
  cameraImage = cam.get();
  imageMode(CORNER);
  image(cameraImage, 0, 0);
  cv.loadImage(cameraImage);
  box= cv.detect();
  //box= cv.detect(1.1, 1, 1+4,100,1000);
  fill(255, 0, 0, 60);
  for (int i = 0; i < box.length; i++) {
    rect(box[i].x, box[i].y, box[i].width, box[i].height);
  }
}
void captureEvent(Capture c) {
  cam.read();
}


//detect(scale, min_neighbors, flags, min_width, min_height)
// https://ubaa.net/shared/processing/opencv/opencv_detect.html
  //CV_HAAR_DO_CANNY_PRUNING    1
  //CV_HAAR_SCALE_IMAGE         2
  //CV_HAAR_FIND_BIGGEST_OBJECT 4
  //CV_HAAR_DO_ROUGH_SEARCH     8