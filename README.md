# Cowcamo Read Me
## Structure
本テンプレートは以下のような構造となっています。
`/app` `/views`下の`scss`  `javascripts` `jade`を編集すると、`/dist`下に`html` `css` `javascript`が自動生成されます。
各種パス名を変更する場合は、`gulp/config.coffee`を編集してください。

```
/app
  /views                 # jade配置ディレクトリ
    index.jade
  /assets
    /stylesheets         # scss配置ディレクトリ
        /foundation      # normalize, base, etc...
        /layout          # header, footer, nav, etc...
        /mixin           # boxshadow, fontsize, etc...
        /object
            /component   # btn, card, grid, waves, etc...
            /project     # articles, news, etc...
            /utility     # helper, etc...
        _variables.scss  # setting file(colorなど)
      style.scss
    /javascripts         # js配置ディレクトリ
      /vendor            # function機能のjs配置ディレクトリ
        waves.js
      /vendor            # vendor用のjs配置ディレクトリ
        jquery.js
    /images              # image配置ディレクトリ
/dist                    # HTML生成ディレクトリ
  /assets
    /images              # 画像配置ディレクトリ
    /javascripts         # JavaScript生成ディレクトリ
      all.js
    /stylesheets         # CSS生成ディレクトリ
      style.css
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
grid、buttonはMaterialize.cssを使用しています。
styleの書き方は下記参照してください。

* [grid](http://materializecss.com/grid.html)
* [buttons](http://materializecss.com/buttons.html)

## About js
js機能はMaterializeのjsフォルダより使用するもののみ`javascripts/all`に入れてください。

* [Materialize](http://materializecss.com/)

===========================================
##カウカモ　デザインについて
* 基本的にはAiデータに沿ってコーディングして頂ければ問題ありません
* 基本的に320px以上のものの横幅は％で組んで頂き、.colのグリッド構造で構築お願いします。レスポンシブに対応したコーディングでお願いします。
* 高さや横幅のピクセル数はAIデータとなるべく同じピクセル数でお願いします。（ボタンと要素の間隔や各オブジェクトの幅の大きさ、letter-spacing具合など）
* フォントの指定は、+font(12)などのmixinをご利用下さい
* px指定で小数点がなってしまっている箇所については切りのいい数値に直してもらって構いません（例.970.786px → 970px）
* 写真の書き出し方法は基本的にJPGでお願いします。透過が必要なものがあればPNGで大丈夫です。
* 更新性の無いピクトグラムや見出し素材（例.PICKUP カウカモおすすめの物件）などは基本的にSVGでお願いします。
* 物件表示のカードデザインや詳しく見るボタンなどについているシャドウはhttp://materializecss.com/shadow.html のz-depth-2でお願いします。マウスオーバー時にはhttp://materializecss.com/buttons.html の挙動を実装させたいです。(z-depth-3)
* 物件表示のカードデザインや詳しく見るボタンなど、角に丸みがついているものは角Rの値を5pxにしてください。（例外はフリーワード検索窓→10px）
* 使用フォントはこちらhttps://www.google.com/fonts/specimen/Noto+Sans 基本的にRegularとBoldのみ。データ上でMediumを使っているものがあればRegularに修正してください。
* 「問い合わせ固定バナー」は物件詳細ページで下部に常に固定させてください。