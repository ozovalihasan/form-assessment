Rails.application.routes.draw do
  resources :quotations, only: [:create, :new]
  resources :transactions, only: [:create]
  resources :reclaims, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotations#new"
end
