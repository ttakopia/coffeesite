Rails.application.routes.draw do
  get 'index',  to: 'arts#index'
  get 'arts/show'
  get 'new', 	to: 'arts#new'
  get 'tags/:tag', to: 'arts#index', as: :tag
  root 'static_pages#home'

  get 'static_pages/about'

  get '/help',      to: 'static_pages#help'

  resources :arts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
