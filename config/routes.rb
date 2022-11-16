Rails.application.routes.draw do
  resources :users
  mount Avo::Engine, at: Avo.configuration.root_path
  get '/home', to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#home'

end
