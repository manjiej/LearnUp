Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :subjects, only: [:new] do
    resources :groups, shallow: true do
      resources :comments, shallow: true
    end
  end

  devise_for :users
  root to: 'pages#home'
  get '/users/profile', to: 'users#profile'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end

