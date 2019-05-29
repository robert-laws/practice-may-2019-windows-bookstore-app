Rails.application.routes.draw do
  root 'public#index'
  
  get 'show', to: 'public#show'
  get 'show/:permalink', to: 'public#show'

  resources :authors, only: [:index, :show, :new, :create, :edit, :update]
  
  resources :books, only: [:index, :show, :new, :create, :edit, :update, :destroy]  
  resources :book_genres, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
