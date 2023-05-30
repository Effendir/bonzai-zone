Rails.application.routes.draw do
  get 'bookings/new'
  root to: "bonzais#index"
  resources :bonzais do
    resources :bookings
  end
  devise_for :users

  get '/profile', to: 'pages#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
