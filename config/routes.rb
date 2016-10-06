Rails.application.routes.draw do
  root 'pages#index'

  resources :registrations, only: [:new, :create]
  resources :confirmations, only: [:new, :create]
end
