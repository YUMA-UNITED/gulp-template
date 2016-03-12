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
    /javascripts         # js配置ディレクトリ
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

## FLOCSS

#### 1. Component

再利用できるパターンとして、小さな単位のモジュールを定義します。

一般的によく使われるパターンであり、例えばBootstrapのComponentカテゴリなどに見られるbuttonなどが該当します。

出来る限り、最低限の機能を持ったものとして定義されるべきであり、それ自体が固有の幅や色などの特色を持つことは避けるのが望ましいです。

#### 2. Project

プロジェクト固有のパターンであり、いくつかのComponentと、それに該当しない要素によって構成されるものを定義します。

例えば、記事一覧や、ユーザープロフィール、画像ギャラリーなどコンテンツを構成する要素などが該当します。

#### 3. Utility

ComponentとProjectレイヤーのObjectのモディファイアで解決することが難しい・適切では無い、わずかなスタイルの調整のための便利クラスなどを定義します。

Utilityは、Component、ProjectレイヤーのObject を無尽蔵に増やしてしまうことを防いだり、またこれらのObject自体が持つべきではないmarginの代わりに.mbs { margin-bottom: 10px; }のようなUtility Objectを用いて、隣接するモジュールとの間隔をつくるといった役割を担います。

またclearfixテクニックのためのルールセットが定義されているヘルパークラスも、このレイヤーに含めます。


#### 基本規則
1. 使用単語にはその箇所を表す適切な英単語を用いる。
2. 省略できる単語はできるだけ省略形式で記述する。
3. 3語以上の連結は可能な限り避ける



## SASS

```

├── 1_foundation
│   ├── _sanitize.sass
├── 2_mixin
│   ├── _colors.sass // カラーコード指定
│   ├── _flex.sass // flexのmixin
│   ├── _fonts.sass // font指定
│   ├── _mixins.sass // よく使うmixin
│   ├── _respond.sass // レスポンス対応のmixin
│   ├── _setting.sass // 共通スタイルの指定
├── pc
	└── 3_layout
		├── _dafault.sass
		├── _footer.sass
		├── _header.sass
	└── 4_object
	    ├── component //例
	    │   ├── _button.scss
	    │   ├── _dialog.scss
	    │   ├── _grid.scss
	    │   └── _media.scss
	    ├── project //例
	    │   ├── _articles.scss
	    │   ├── _comments.scss
	    │   ├── _gallery.scss
	    │   └── _profile.scss
	    └── utility //例
	        ├── _align.scss
	        ├── _clearfix.scss
	        ├── _margin.scss
	        ├── _position.scss
	        ├── _size.scss
	        └── _text.scss

├── sp
	└── 同上

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
