# ProcessingWithOpenCV

## Learn Processing Programming with OpenCV

プログラミング言語 ProcessingとOpenCVを使ってみよう。


ここではプログラミング言語ProcessingでOpenCVを使う練習をします。

## OpenCV ライブラリをインストールする

まずProcessingのウインドウのメニューから「スケッチ→ライブラリをインポート→ライブラリを追加」を選択するとContribute Manageのウインドウが開きます。

Contribute Managerの右上に「Filter(フィルタ)」と文字が入っている入力エリアがありますので、そこでOpenCVと入力すると"OpenCV for Processing | Computer vision..."とリスト表示が現れます。そのリストを選択した後、右下側にあるInstall(インストール)ボタンを押してインストールします。同様な方法で今度は "Video | Gstreamer-based video.."をインストールします。


2018年3月時点でのバージョンは次の通りです。

- OpenCV for Processing 0.5.4 Greg Borenstein  Computer vision with OpenCV.
- Video 1.0.1 The Processing Foundation  GStreamer-based video library for Processing.

## 利用可能なカメラをリストアップする

まずShowCameraListを使い利用可能なカメラ(Webカメラ)をリストアップします。認識されたカメラは1番目から順に利用可能な画像サイズ及びfpsで区別されリストアップされますが、多機能なカメラを利用している場合、いろいろな画面サイズや利用可能なfpsの値が多数あり、その組み合わせでリストアップされるので大量なリストになります。その場合、Processingのテキストエリアで確認可能な行数よりも多くなってしまい情報すべてを確認できません。同じ内容がShowCameraListディレクトリ下のcameralist.txtファイルに格納されていますので、そちらでも確認が可能です。fps=30のみでよければGetCameraInfoを使うと便利でしょう。

## カメラが動作することを確認する

SimpleCameraCapture には利用可能なカメラからイメージを読み込み表示するプログラムが用意されています。
ShowCameraList や GetCameraInfo を使いカメラが取り込むイメージのサイズと、その設定の順番（ここではカメラ番号と呼んでいます）を確認し、そのサイズとカメラ番号をプログラム中で指定することで動作します。


:shipit:
