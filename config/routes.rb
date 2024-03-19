# config/routes.rb
Rails.application.routes.draw do
  # ... other routes ...

  resources :customers, only: [:show, :index] do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end

  # If you have not defined the path names using `collection` block inside `resources`,
  # you can define them like this:
  get '/customers/alphabetized', to: 'customers#alphabetized', as: 'customers_alphabetized'
  get '/customers/missing_email', to: 'customers#missing_email', as: 'customers_missing_email'

  # ... other routes ...
end
