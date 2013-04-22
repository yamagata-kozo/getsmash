Getsmash
======================
交通費精算Webアプリ


開発環境の作り方
----------------------

1. アプリケーションのcloneとgemのインストール

```shell
$ cd path/to/workspace  
$ git clone git@github.com:yamagata-kozo/getsmash.git  
$ cd getsmash  
$ bundle install --path vendor/bundle --without production  
```

2. DBのマイグレーションとサーバ起動

```shell
$ bundle exec rake db:migrate  
$ bundle exec rails server  
```


開発の進め方
-----------------
各自実装する機能ごとに作業ブランチ（トピックブランチ）を作成し、Pull Requestを使ってmasterに取り込んでもらう

1. トピックブランチの作成

```shell
$ git checkout -b <トピックブランチ>
```

2. 作業をコミットしてoriginにトピックブランチをpush

```shell
$ git add <ファイル名>
$ git commit -m "コミットコメント"
$ git push origin <トピックブランチ>
```

3. githubでPull Requestを作成
