Rails.application.routes.draw do
  get 'users/new'

  get 'users/now'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/home', to: 'pages#home'
  get '/signup', to: 'users#new'
  get '/contact', to: 'pages#contact'
  get '/help', to: 'pages#help'
  get '/about', to: 'pages#about'
end
