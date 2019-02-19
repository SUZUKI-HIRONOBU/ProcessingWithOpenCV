# processing-w-opencv

プログラミング言語 ProcessingとOpenCVを使ってみよう。


## カメラの情報を取得するプログラム - Show Camera List

まず最初にコンピュータに接続しているカメラの解像度やフレームレート情報のリストを表示します。

## 必要なライブラリ

Processingの標準Videoライブラリである "Video 1.0.1 The Processing Foundation GStreamer-based video library for Processing." (2019/2 参照) をインストールします。
インストール方法は processing-w-opencv/README.md を参照してください。

## プログラムの説明

このプログラムはカメラ(Webカメラ)がサポートする解像度とフレームレートの情報リストのすべてを表示すると同時にフォルダ内にファイルcameralist.txtを作成し、同じ内容をセーブしておきます。
接続しているカメラがサポートする解像度やフレームレートの能力に依存しますが、カメラの種類によっては大量の行が表示される場合があります。

下記は出力例です。

```
0:name=/dev/video0,size=640x480,fps=30
1:name=/dev/video0,size=640x480,fps=15
2:name=/dev/video0,size=640x360,fps=30
.....
10:name=/dev/video0,size=1280x720,fps=30
11:name=/dev/video0,size=1280x720,fps=15
```
たとえばカメラで解像度が640x480でfpsが30を使いたい時は0番目、解像度が1280x720でfpsが30を使いたい時は10番目を使うことになります。

## その他

カメラから画像が取得できているかを調べるためにはSimpleCameraCapture.pdeを参照してください。



