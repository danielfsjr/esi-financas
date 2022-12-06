Rails.application.routes.draw do
  resources :usuarios
  resources :user_sessions
  resources :transacoes
  resources :categories
  root "home#index"
end
