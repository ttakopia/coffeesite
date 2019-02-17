Rails.application.routes.draw do
 
  resources :memos
  resources :arts do
    resources :favorites, only: [:create, :destroy]
  end
  resources :user_sessions
  resources :users
  resources :arts

  root 'static_pages#home'
  get  'about',  to: 'static_pages#about'
  get  '/help',  to: 'static_pages#help'
  get  'column',  to: 'static_pages#column'

  get  'login'  => 'user_sessions#new',     :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  
  get 'memo',  to: 'memos#index'
  get 'index',  to: 'arts#index'
  get 'new', 	  to: 'arts#new'
  get 'tags/:tag', to: 'arts#index', as: :tag

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
