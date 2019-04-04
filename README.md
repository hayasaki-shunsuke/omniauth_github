# deviseを使ってユーザー認証を実装する

deviseは人気のユーザー認証プラグインです。

### 参考URL
- https://github.com/plataformatec/devise
- http://railsgirls.jp/devise
# やること
- ユーザー登録画面の追加
- ログイン処理実装
- 認証処理実行後、書籍一覧のページを表示

# やったこと
### インストール
- **Gemfile** に `gem devise` を追加
- ` rails generate devise:install `

### ユーザー登録画面の追加

- `rails generate devise user`
- `rails db:migrate`

### 辞書ファイルの日本語版追加
- devise.ja.ymlを追加

