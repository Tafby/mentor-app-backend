Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
