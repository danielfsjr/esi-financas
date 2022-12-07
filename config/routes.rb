Rails.application.routes.draw do
  delete "logout", to: "user_sessions#destroy"

  resources :usuarios
  resources :user_sessions
  resources :transacoes
  resources :categories

  root "home#index"
end
