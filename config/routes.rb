Rails.application.routes.draw do
  resources :microposts
  get '/microposts/:id/:text', to: 'microposts#get_text'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
