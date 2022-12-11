# == Route Map
#

Rails.application.routes.draw do
  resources :users
  mount Avo::Engine, at: Avo.configuration.root_path
  resources :articles do
    resources :comments
  end
  resources :tags
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'articles#index'

end
