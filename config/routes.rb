Rails.application.routes.draw do
  resources :sections
  resources :comments
  resources :projects

  get '/', to: 'static#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/auth/:provider/callback', to: 'sessions#create'

end
