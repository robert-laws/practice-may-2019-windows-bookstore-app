Rails.application.routes.draw do
  root 'public#index'
  
  get 'show', to: 'public#show'
  get 'show/:permalink', to: 'public#show'

  resources :authors, only: [:index, :show]
  
  resources :books, only: [:index, :show, :new, :create]
  
  resources :book_genres, only: [:index, :show, :new, :create, :edit, :update]
end
