Rails.application.routes.draw do
  # VERB -- PATH (URL) -- CONTROLLER#ACTION
  get '/toys'
  get 'toys/new'
  get 'toys/create'
  get 'toys/show'
  get 'toys/edit'
  get 'toys/update'
  get 'toys/delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :toys
end
