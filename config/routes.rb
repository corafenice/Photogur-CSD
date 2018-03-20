Rails.application.routes.draw do
  root "users#new"
  resource :users, only: %i(create new)
  resource :sessions, only: %i(create new destroy)
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
