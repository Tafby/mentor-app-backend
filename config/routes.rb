Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'find_user' => 'users#find'

  resources :users

  resources :mentor_profiles

  resources :conversations, only: [:index, :show] do
    resources :messages, only: [:index, :create]
  end

  resources :categories, only: [:index]
end
