Rails.application.routes.draw do
    
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'orders', to: 'pages#orders'
  get 'map', to: 'pages#map'
  resources :stores
  resources :items
  resources :callsheets
  resources :ecommorders
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

