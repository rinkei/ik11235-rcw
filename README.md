## 概要
レシピの情報を出力するプログラム

## 前提準備
rubyが必須
Macではデフォルトで入っているが、windows,Linuxではインストールが必要。

### Windows
[ダウンロード](https://www.ruby-lang.org/ja/downloads/)より、Windows用のRubyをダウンロード、インストール

### Linux
```sh
sudo apt-get install ruby
```
or

```sh
sudo yum install ruby
```

## 実行方法
```sh
ruby ./recipe.rb
```

### 実行例
```sh
ruby ./recipe.rb
1: オムライス
2: 親子丼
3: 杏仁豆腐
```

レシピ情報にはそれぞれ固有のレシピIDが付与される。

レシピIDはレシピ情報ファイルに記載されている先頭を起点として、1から順に付与される。

## レシピ情報
レシピ情報は、```recipe-data.txt```に記載されている。

### 書式
レシピ情報は、以下のように料理名を1行毎に記載する。
```
料理A
料理B
料理C
```
