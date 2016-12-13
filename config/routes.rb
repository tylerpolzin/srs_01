Rails.application.routes.draw do
    
  resources :dept601calllogs
  resources :dept600calllogs
  resources :dept400calllogs
  resources :shipments
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'orders', to: 'pages#orders'
  get 'map', to: 'pages#map'
  resources :stores
  resources :items
  resources :callsheets
  resources :ecommorders
  resources :shipments # possibly temporary tutorial for :ecommorders
  resources :users do
    resource :profile
  end
  
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy'
  end

end

