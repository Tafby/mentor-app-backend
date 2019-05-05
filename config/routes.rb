Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'find_user' => 'users#find'

  resources :users

  resources :mentor_profiles
  resources :mentorships

  resources :conversations, only: [:index] do
    resources :messages, only: [:index, :create]
  end

  mount ActionCable.server => '/cable'

  resources :categories, only: [:index]
end
