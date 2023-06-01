Rails.application.routes.draw do
  get 'bookings/new'
  root to: "bonzais#home"
  resources :bonzais do
    resources :bookings
  end
  devise_for :users

  patch '/booking_accept/:id', to: 'bookings#accept', as: 'booking_accept'
  patch '/booking_decline/:id', to: 'bookings#decline', as: 'booking_decline'

  get "/profile", to: "pages#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
