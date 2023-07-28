Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/about'
  get 'home/cards'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "home#index"
   root "friends#index"
end
