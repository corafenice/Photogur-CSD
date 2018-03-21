Rails.application.routes.draw do
  root "pictures#index"
  resource :users, only: %i(create new)
  resource :sessions, only: %i(create new destroy)
  resources :pictures

  resources :likes, :only => [:create]
  # resources :comments
  post '/comments/:id', to: 'comments#create'
  get '/comments/:id', to: 'comments#index', as: :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
