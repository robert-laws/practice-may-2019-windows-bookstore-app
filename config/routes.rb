Rails.application.routes.draw do
  root 'public#index'
  
  get 'show', to: 'public#show'
  get 'show/:permalink', to: 'public#show'
  
  resources :authors, only: [:index, :show]
end
