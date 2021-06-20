<h1 align="center">Tourist</h1>
<br />
<br />

## App URL
### https://tourist-me.herokuapp.com/
### ユーザー名:admin　パスワード:2222
<br />
<br />

## アプリケーション概要
バイクに乗る方が、ツーリング仲間を募集したり、参加したりすることができることを目指しています。
<br />
<br />

## 利用方法
トップページで、投稿されているツーリングプランを閲覧し、見たいプランの詳細ページに遷移することができます。ログインしていて、かつ自身の投稿の場合、投稿詳細ページで、編集、削除操作ができます。また、トップページや、投稿詳細ページでユーザー名をクリックすることで、ユーザーのマイページに遷移することができます。
ログインしている場合、他ユーザーが投稿しているプランに参加することができる機能を追加実装予定です。
<br />
<br />

## 目指した課題解決
バイクに乗る時、友人等身内で集まってツーリングも楽しいですが、今日はこんな乗り方がしたい、ここに行きたいと思った時に同じ気持ちを持ったユーザーをピンポイントで募ることができることを目指しています。
<br />
<br />

## 要件
・ユーザー管理機能  
・プラン投稿機能  
・投稿一覧表示機能  
・投稿詳細表示機能  
・投稿編集機能  
・投稿削除機能  
・マイページ機能
<br />
<br />

## アプリケーションイメージ

<br />
<br />

## 工夫した点
ツーリング仲間を募集する上で、ユーザーが気になってしまうことは何かを重視しました。ライダーは、他のライダーが自分の走行ペースと合っているか、無理したり、ストレスにならないかが心配です。この課題を解決するために、できるだけ自分の希望に合致する条件を選べるような、項目を用意しました。
<br />
<br />

## 苦労した点
・使いやすく、かつツーリングのイメージに合うようなビューにすることです。背景画像を差し込んだり、背景に紛れないような文字の出力の仕方、使いやすいような項目の配置になるような調整に苦労しました。  
・現在、プランに参加できるような機能を実装中で、データベースや、テーブルの扱いをどうするか模索中です。
<br />
<br />

## 実装予定の機能
・ビューに動きを出す  
・プラン参加機能  
・プラン検索機能  
・コメント機能  
・グーグルマップとの連携  
・DM機能  
その他、ユーザーページや投稿ページも項目を増やし、詳細の情報を扱えるようにしていく予定です。
<br />
<br />


# テーブル設計

## users テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| email              | string     | null: false, unique: true |
| encrypted_password | string     | null: false |
| nickname           | string     | null: false |
| birthday           | date       | null: false |

### Association

- has_many : tourings
- has_many : comments

 ## tourings テーブル

| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| plan               | string     | null: false |
| displacement_id    | integer    | null: false |
| text               | text       | null: false |
| style_id           | integer    | null: false |
| term_id            | integer    | null: false |
| area_id            | integer    | null: false |
| day                | date       | null: false |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to : user
- has_many :comments

## likes テーブル

| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| user               | references | null: false |
| touring            | references | null: false |

### Association

- belongs_to : touring
- belongs_to : user

## comments テーブル

| Column             | Type       | Options     |
| -------------------| -----------| ----------- |
| text               | text       | null: false |
| user               | references | null: false |
| touring            | references | null: false |

### Association

- belongs_to : user
- belongs_to : touring

<br />
<br />

## ローカルでの動作方法
ターミナルにて以下のコマンドを実行  
% git clone https://github.com/yamaryo0250/tourists-2.git  
※Ruby 2.6.5　Rails 6.0.3.6
