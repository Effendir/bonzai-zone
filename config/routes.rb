Rails.application.routes.draw do
  get 'bookings/new'
  resources :bonzais do
    resources :bookings
  end
  devise_for :users
  root to: "bonzais#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
