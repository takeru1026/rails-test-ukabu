Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'home/index'
  get 'home/about'
  get 'home/show'
  root to: "home#index"

  ## 開発環境用letter_opener
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
