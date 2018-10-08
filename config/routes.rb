Rails.application.routes.draw do
  
  resources :arts do
    resources :favorites, only: [:create, :destroy]
  end
  resources :user_sessions
  resources :users
  resources :arts

  root 'static_pages#home'
  get  'about',  to: 'static_pages#about'
  get  '/help',  to: 'static_pages#help'

  get  'login'  => 'user_sessions#new',     :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'

  get 'index',  to: 'arts#index'
  get 'new', 	  to: 'arts#new'
  get 'tags/:tag', to: 'arts#index', as: :tag

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
