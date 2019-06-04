Rails.application.routes.draw do
  # resources :toys_users, only: %i(new create update)

  # get 'rent/toy/:toy_id', to: 'toys_users#new', as: 'new_rental'
  # post 'rent', to: 'toys_users#create', as: 'toys_users'
  # patch '/rent/toy/:toy_id', to: 'toys_users#update', as: 'toys_user'


  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  # route route
  root to: 'toys#index'

  resources :users, only: :show

  resources :toymakers do
    resources :toys, only: %i(new index)
  end

  # resources :users, only: [:index, :show]

  # VERB -- PATH (URL) -- CONTROLLER#ACTION
  # get '/toys', to: 'toys#index', as: 'toys'
  # get '/toys/new'
  # post '/toys', to: 'toys#create'
  # get '/toys/:id', to: 'toys#show', as: 'toy'
  # get '/toys/:id/edit', to: 'toys#edit', as: 'toy_edit'
  # patch '/toys/:id', to: 'toys#update'
  # delete '/toys/:id', to: 'toys#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :toys 
    # resources :toys_users, only: %i(new create update)
    
  # route to test serialer return
  get 'rental/:id', to: 'toys_users#show'
  get '/rental/new', to: 'toys_users#new'
  post '/rental', to: 'toys_users#create'
  patch '/rental/:id', to: 'toys_users#update', as: 'rental_update'
end
