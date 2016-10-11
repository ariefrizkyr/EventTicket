Rails.application.routes.draw do

  namespace :admin do
    resources :confirmations
    resources :registrations
    root to: "registrations#index"
  end

  root 'pages#index'

  resources :registrations, only: [:new, :create, :show]
  resources :confirmations, only: [:new, :create]
end
