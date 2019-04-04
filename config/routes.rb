# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users, controllers: {
      sessions: "users/sessions",
      registrations: "users/registrations",
      omniauth_callbacks: "users/omniauth_callbacks"
  }

  get "books", to: "books#index"

  # config/routes.rb
  scope "(:locale)" do
    resources :books
  end

end
