Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'find_user' => 'users#find'

  resources :users
  # post '/login', to: 'auth#create'
  # get '/profile', to: 'users#profile'

end
