Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/help'
  
  get  'static_pages/about'

  root 'static_pages#home'
  
  post '/signup',  to: 'users#create'
  
  resources :users
end
