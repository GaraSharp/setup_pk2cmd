---
title : 簡単セタップスクリプト for pk2cmd_plus
begin : 2026-01-06 23:19:36 

---

出来る範囲で簡単に pk2cmd をセタップする、インチキスクリプトです。

#  準備だよ

Ubuntu では、つぎのパッケージが必要です。

build-essential, libusb-dev, curl

あらかじめ導入しておいて下さい。


#  使い方

~~~1. つぎのアドレスにアクセスし、ファイルをダウンロードしておきます~~~

~~~https://web.archive.org/web/20201128020840/http://www.microchip.com/forums/download.axd?file=0;749972~~~
( スクリプト中で curl を使ってダウンロードするので、不要になりました )

2. 適当な作業ディレクトリに、上記のファイル　と setup.sh を用意しておきます

3. setup_plus.sh を実行します

実行するために、実行属性をツケておきます。

```
chmod + ./setup_plus.sh
sh setup_plus.sh
```

4. スクリプトの末尾に、sudo コマンドラインが出ているので、コピペして最終実行します。

```
sudo mkdir -p /usr/share/pk2/
sudo cp PK2DeviceFile.dat /usr/share/pk2/
sudo cp pk2cmd/pk2cmd/pk2cmd /usr/local/bin/
sudo cp 60-pickit2.rules /etc/udev/rules.d/
```

sudo を使うので、内容を理解の上、慎重に実行してください。

5. ここまで実行したら、念の為 システムを再起動します

お疲れ様でした。

[EOT]

