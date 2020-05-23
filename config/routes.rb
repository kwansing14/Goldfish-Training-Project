Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :programs
  resources :images
  get '/programs/:program_id/images' => 'images#show', as: 'program_images'
  root 'programs#index'
  resources :fishtagrams do
    resources :comments
  end

  get '/users/:user_id/fishtagrams' => 'profiles#show', as: 'user_fishtagrams'
end