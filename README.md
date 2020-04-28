# Introduce
flutterでアプリ作ってますー．
今回はフルスクリーンダイアログを表示させます．

<a href="https://daichan.club/wp-content/uploads/2020/04/fullscreenDialog.gif"><img src="https://daichan.club/wp-content/uploads/2020/04/fullscreenDialog.gif" alt="" width="141" height="300" class="aligncenter size-full wp-image-79061" /></a>

# ENvironment
```
- MacOS Catalina 10.15.1
- flutter --version  
Flutter 1.15.4-pre.240 • channel master • https://github.com/flutter/flutter.git
Framework • revision 32b17974ea (28 hours ago) • 2020-02-29 06:41:00 -0500
Engine • revision 755e2b559d
Tools • Dart 2.8.0 (build 2.8.0-dev.10.0 09bbd3cca5)
- Visual Studio Code
```

# Getting Start
ソースコードはこちらです．branch名は`fullscreenDialog`です．

https://github.com/monkeydaichan/flutter_samples/tree/fullscreenDialog
### main.dart

main.dartはscreen.dartを表示させる処理だけです．

<script src="https://gist.github.com/6ddcf7b0c9a734e1a6676885977eddc6.js"></script>

### screen.dart
`Container0`WidgetのFloatingActionButtonをタップすると，`Container1`WIdgetが表示されます．Navigator.pushのメソッドに**fullscreenDialog: true**を追加することで実現できます．

<script src="https://gist.github.com/54435aaff2b292975b508271883f9f70.js"></script>