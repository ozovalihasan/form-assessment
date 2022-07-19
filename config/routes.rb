Rails.application.routes.draw do
  resources :quotations, only: [:create, :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotations#new"
end
