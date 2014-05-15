Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  resources :users, only: [:index, :show, :edit, :update, :destroy]

  resources :pets   #, :except => []

end
