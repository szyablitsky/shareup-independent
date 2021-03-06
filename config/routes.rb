Shareup::Application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  namespace :api do
    resources :shares, only: [:index, :create]
  end
  devise_scope :user do
    get '/api/current_user' => 'users/sessions#show_current_user'
    post '/api/check/is_user' => 'users/users#is_user', as: 'is_user'
  end
end
