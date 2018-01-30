Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#page'

  get 'login' ,to: 'sessions#new'
  post 'login' ,to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :requests
  resources :patients

  re

  get 'pharm_login', to: 'pharmacies_sessions#new'
  post 'pharm_login', to: 'pharmacies_sessions#create'
  delete 'logout', to: 'pharmacies_sessions#destroy'

end
