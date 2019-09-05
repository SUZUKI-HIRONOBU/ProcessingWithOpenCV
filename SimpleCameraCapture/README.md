# processing-w-opencv

プログラミング言語 ProcessingとOpenCVを使ってみよう。

## カメラから画像を取り込み表示する Simple Camera Capture

## 必要なライブラリ

Processingの標準Videoライブラリである "Video 1.0.1 The Processing Foundation GStreamer-based video library for Processing." (2019/2 参照) をインストールします。
インストール方法は ProcessingWithOpenCV/README.md を参照してください。

## プログラムの説明

このプログラムはカメラ(Webカメラ)から画像を取り込み表示します。
変数cameranumberを利用しているカメラの解像度とフレームレートにあわせて適切な値にする必要があります。
どのような解像度とフレームレートが使われるか事前に調べる必要があります。
関数size()で指定する表示画面サイズはカメラの解像度に依存しますので適切な値にする必要があります。


## その他

カメラの解像度とフレームレートに関してはGetCameraInfo.pdeやShowCameraList.pdeを参照してください。


:shipit:
