# meseling

meseling(ミーセリング)は、インフルエンサーが主催する美容系カウンセリングに参加できるオンラインサービスです。レスポンシブ対応しているのでスマホからもご確認いただけます。
![E33E5370-0682-474C-B36D-9762A451D61B](https://user-images.githubusercontent.com/106332074/213484803-f22cb2ec-8c93-4b72-95ea-b59a4b274246.jpeg)
![21635775-FD3D-4084-BA42-3D87937CAEFD](https://user-images.githubusercontent.com/106332074/213485137-881cbf99-3f32-426f-8ee9-8585641bd3b6.jpeg)
# URL
https://portfolio-yubukiotowa.herokuapp.com/

画面右上のログインボタンから、ゲストユーザーとして、メールアドレスとパスワードを入力せずにログインできます。


# Description(概要)

meselingには、流行りのメイクのやり方やパーソナルカラー診断、コンプレックス解消法などの美容系カウンセリングがたくさん登録されています。ユーザーは自分の興味のあるカウンセリングに自由に参加でき、インフルエンサーに事前に質問を送ることも可能です。


# 使い方

1. アカウントを新規登録(ゲストユーザーのまま続行する場合はログインページで選択)
2. カウンセリング一覧ページから参加したいカウンセリングを探す
3. 予約ボタンを押して予約を確定(質問フォームから事前に聞きたいことを入力可能です)
4. 登録したメールアドレスにzoom URLが記載されたメールが届くため、カウンセリング開始日時に入室してください


# 使用技術

* Ruby 2.7.6
* Ruby on Rails 6.1.4
* Sqlite3 1.4
* Rspec-rails
* Rubocop-airbnb


# 機能一覧

* ユーザー登録、ログイン機能(devise) 
* 画像登録機能(Active Storage)
* 検索機能、並べ替え機能(ransack)
* いいね機能
* フォロー機能
* 予約機能
* レビュー投稿機能
* ページネーション機能(kaminari)
* メール機能(Action Mailer)


# テスト  

* Rubocop-airbnb
* Rspec-rails
    * 単体テスト(model)
    * 統合テスト(system)
