Rails.application.routes.draw do
  #get 'about/index'
  #get 'section/index'
  #get 'section/show'
  #get 'group/index'
  #get 'group/show'
  #get 'country/index'
  #get 'country/show'
  #get 'home/index'
  resources :dogs, only: [:index, :show]
  resources :sections, only: [:index, :show]
  resources :groups, only: [:index, :show]
  resources :countries, only: [:index, :show]
  root 'home#index'
  get 'about', to: 'about#index'

  #get 'dogs/index'
  #get 'dogs/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
