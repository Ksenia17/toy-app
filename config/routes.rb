Rails.application.routes.draw do
  root  to: 'users#index'
  resources :dogs
  resources :microposts
  get '/microposts/:id/:text', to: 'microposts#get_text'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
