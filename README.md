# processing-w-opencv

## Learn Processing Programming with OpenCV

プログラミング言語 ProcessingとOpenCVを使ってみよう。


ここではプログラミング言語ProcessingでOpenCVを使う練習をします。

## OpenCV ライブラリをインストールする

まずProcessingのウインドウのメニューから「スケッチ→ライブラリをインポート→ライブラリを追加」を選択するとContribute Manageのウインドウが開きます。

Contribute Managerの右上に「Filter(フィルタ)」と文字が入っている入力エリアがありますので、そこでOpenCVと入力すると"OpenCV for Processing | Computer vision..."とリスト表示が現れます。そのリストを選択した後、右下側にあるInstall(インストール)ボタンを押してインストールします。

2018年3月時点でのバージョンは次の通りです。

- OpenCV for Processing 0.5.4 Greg Borenstein  Computer vision with OpenCV.


## 利用可能なビデオカメラをリストアップする

まずShowCameraListを使い利用可能なビデオカメラ(Webカメラ)をリストアップします。認識されたカメラは1番目から順に利用可能な画像サイズ及びfpsで区別されリストアップされますが、多機能なカメラを利用している場合、いろいろな画面サイズや利用可能なfpsの値が多数あり、その組み合わせでリストアップされるので大量なリストになります。その場合、Processingのテキストエリアで確認可能な行数よりも多くなってしまい情報すべてを確認できません。同じ内容がShowCameraListディレクトリ下のcameralist.txtファイルに格納されていますので、そちらでも確認が可能です。



:shipit: