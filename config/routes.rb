# == Route Map
#

Rails.application.routes.draw do
  resources :users
  mount Avo::Engine, at: Avo.configuration.root_path
  get '/articles', to: 'articles#index'
  get '/articles/:id', to: 'articles#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'articles#index'

end
