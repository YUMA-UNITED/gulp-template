# Read Me
## Structure
本テンプレートは以下のような構造となっています。
`/app` `/views`下の`sass`  `javascripts` `jade`を編集すると、`/dist`下に`html` `stylesheets` `javascript`が自動生成されます。
各種パス名を変更する場合は、`gulp/config.coffee`を編集してください。

```
/app
  /views                 # jade配置ディレクトリ
    /layouts                 # レイアウトディレクトリ
    /shared                 # 共通パーツディレクトリ
    index.jade

  /assets
    /stylesheets         # sass配置ディレクトリ
        /1_foundation      # normalize, base, etc...
        /2_mixin           # boxshadow, fontsize, etc...
        /3_layout          # header, footer, nav, etc...
        /4_object
            /component   # btn, card, grid, waves, etc...
            /utility     # helper, etc...
            /project     # articles, news, etc...
      application.sass

    /javascripts         # js配置ディレクトリ
      /vendor            # function機能のjs配置ディレクトリ
      /vendor            # vendor用のjs配置ディレクトリ
        jquery.js

    /images              # image配置ディレクトリ

/dist                    # HTML生成ディレクトリ
  /assets
    /images              # 画像配置ディレクトリ
    /javascripts         # JavaScript生成ディレクトリ
      all.js
    /stylesheets         # CSS生成ディレクトリ
      application.css
  index.html

/gulp                    # gulpタスクディレクトリ
  /tasks
  config.coffee          # configディレクトリ
gulpfile.coffee
README.md
```

## Gulp Installation
```
npm install
gulp
```
### build(納品用ファイルの生成)
```
gulp build
```

## About Style


## About js
js機能は使用するもののみ`javascripts/all`に入れてください。
