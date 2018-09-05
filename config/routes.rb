Rails.application.routes.draw do
  resources :arts
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'

  resources :users
  get 'index',  to: 'arts#index'
  get 'arts/show'
  get 'new', 	to: 'arts#new'
  get 'tags/:tag', to: 'arts#index', as: :tag
  root 'static_pages#home'

  get 'static_pages/about'

  get '/help',      to: 'static_pages#help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
