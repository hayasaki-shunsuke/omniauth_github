# omniauth

## omniauthを使ってGitHub認証を実装する課題用リポジトリ
### 参考URL
- https://qiita.com/fa19940118/items/e081e99d6a199568810f
- https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview

# やること
- GitAppsにてOAuth用のアプリを作成する
- ログイン画面に`Sign in with GitHub`のリンクを追加
- GitHub認証の処理追加

# やったこと
### インストール
- **Gemfile** に `gem "omniauth-github"` を追加

### ログイン画面に`Sign in with GitHub`のリンクを追加
```
<%= link_to "Sign in with #{OmniAuth::Utils.camelize(provider)}", omniauth_authorize_path(resource_name, provider) %><br />
```
### GitHub認証後のcallback処理を追加
```
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    @user = User.find_for_github_oauth(request.env["omniauth.auth"], current_user)

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
```


