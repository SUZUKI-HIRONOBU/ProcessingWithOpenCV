# processing-w-opencv

プログラミング言語 ProcessingとOpenCVを使ってみよう。

## 顔検出 Simple Face Detection

FaceDetectionはカメラからイメージを取り込みOpenCVを使い顔を検出します。


## 必要なライブラリなど

次の2つのライブラリと1つのファイルが必要です。

2018年3月時点でのバージョンは次の通りです。

- OpenCV for Processing 0.5.4 Greg Borenstein Computer vision with OpenCV.
- Video 1.0.1 The Processing Foundation GStreamer-based video library for Processing.

OpenCVの顔検出に必要な設定ファイル haarcascade_frontalface_alt.xml を入手します。

- https://github.com/opencv/opencv/blob/master/data/haarcascades/haarcascade_frontalface_alt.xml

https://github.com/opencv/opencv/blob/master/data/haarcascades には顔検出以外にも目の検出や口の検出などたくさんの設定ファイルがあります。

## プログラムの説明

利用するカメラ番号を変数cameranumberに設定します。
カメラ番号の選び方などがわからない時はSimpleCameraCaptureを参考にして設定してください。
size()はカメラのイメージのサイズと同じサイズを指定します。

イメージの中にある顔の検出は次のコード部分で処理しています。
cv.detect()で何も指定しない場合、イメージの中にある顔と認識できるものすべてを検出しようとします。

```

box= cv.detect();

```

プログラム中でコメントアウトしている部分のようにcv.detect()で引数を指定して条件を加えると検出が限定され(おおよその場合)処理が高速化します。


```

box= cv.detect(1.1, 1, 1+4,100,1000);

```


:shipit:

