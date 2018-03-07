Rails.application.routes.draw do
  root to: "homepage#index"
  get    '/sign_in',   to: 'sessions#new'

  resources :books, only: [:index]
end
