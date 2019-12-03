Rails.application.routes.draw do
  resources :groups
  devise_for :users
  resources :subjects
  root to: 'pages#home'
  get '/users/profile', to: 'users#profile'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
