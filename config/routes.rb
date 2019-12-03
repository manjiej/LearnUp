Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subjects, only: [:index, :show] do
    resources :groups do
      resources :comments, only: [:index, :new, :create]
    end
    resources :comments, only: [:show, :edit, :update, :destroy]
  end

  devise_for :users
  root to: 'pages#home'
  get '/users/profile', to: 'users#profile'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end

