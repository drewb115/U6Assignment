Rails.application.routes.draw do
  # Existing customer resources - you can keep these if they are used elsewhere
  resources :customers, only: [:show, :index]

  # You can remove these if you have defined resources :customers, only: [:show, :index]
  # get 'customers/show'
  # get 'customers/index'

  # Custom routes for the new actions
  root 'customers#index'
  get '/customers/alphabetized', to: 'customers#alphabetized', as: 'customers_alphabetized'
  get '/customers/missing_email', to: 'customers#missing_email', as: 'customers_missing_email'

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Other routes...
end
