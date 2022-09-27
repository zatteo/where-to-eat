Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'

  post 'reservations', to: 'reservations#create'
  get 'reservations/:token', to: 'reservations#cancel'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
