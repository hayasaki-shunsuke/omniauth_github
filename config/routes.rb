# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'oauth_test/index'

  # devise_for :models
  devise_for :users, controllers: {
      sessions: "users/sessions",
      registrations: "users/registrations",
      omniauth_callbacks: "users/omniauth_callbacks"
  }

  # config/routes.rb
  scope "(:locale)" do
    resources :books
  end

  get "books", to: "books#index"

  # root :to => 'oauth_test#index'



  devise_for :users
  devise_for :models
  # config/routes.rb
  scope "(:locale)" do
    resources :books
  end

end
