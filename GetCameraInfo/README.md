# ProcessingWithOpenCV

プログラミング言語 ProcessingとOpenCVを使ってみよう。


## カメラの情報を取得するプログラム - Get Camera Info

まず最初にコンピュータに接続しているカメラから正常に情報を取得できるかどうかをテストしてみましょう。

## 必要なライブラリ

Processingの標準Videoライブラリである "Video 1.0.1 The Processing Foundation GStreamer-based video library for Processing." (2019/2 参照) をインストールします。
インストール方法は ProcessingWithOpenCV/README.md を参照してください。

## プログラムの説明

このプログラムはカメラ(Webカメラ)がサポートする解像度とフレームレートの情報リストのうちでfps=30に合致するものを表示します。
表示されたリストの最初の数字がProcessing側で認識されたカメラリストの入っている順番を指し示しています。下記は出力例です。
接続しているカメラがサポートする解像度の能力に依存しますが、カメラの種類によっては大量の行が表示される場合があります。
      

```
Available Cameras:
0,name=/dev/video0,size=640x480,fps=30
2,name=/dev/video0,size=640x360,fps=30
4,name=/dev/video0,size=424x240,fps=30
.....
```

たとえばカメラで解像度が640x480でfpsが30を使いたい時は0番目、解像度が640x360でfpsが30を使いたい時は2番目を使うことになります。

## その他

すべてのカメラのリストを表示したい時は ShowCameraList.pde を参考にしてください。



