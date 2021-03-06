Rails.application.routes.draw do
  root 'static_pages#home'
  get 'sessions/new'

  get 'users/new'

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get    '/login',   to: 'sessions#new'
  get '/signup', to: 'users#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/signup',  to: 'users#create'
  
  resources :users
  resources :microposts,          only: [:create, :destroy]
end
