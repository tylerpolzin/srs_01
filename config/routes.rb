Rails.application.routes.draw do
  resources :shipments
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'orders', to: 'pages#orders'
  get 'map', to: 'pages#map'
  resources :stores
  resources :items
  resources :callsheets
  get 'callsheet_dashboard', to: 'callsheets#dashboard'
  resources :new_callsheets, only: :create
  get 'ecommorders', to: 'ecommorders#show'
  
  resources :shipments # possibly temporary tutorial for :ecommorders
  
  resources :users do
    resource :profile
  end
  get 'profiles' => 'profiles#index', as: :profiles
  
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy'
  end

end

