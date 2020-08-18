Rails.application.routes.draw do
  devise_for :users
  get 'items/new'
  resources :items
  root 'items#new'
end
