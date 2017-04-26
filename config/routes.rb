Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/signup', to: 'users#new'
  get '/contact', to: 'pages#contact'
  get '/help', to: 'pages#help'
  get '/about', to: 'pages#about'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
