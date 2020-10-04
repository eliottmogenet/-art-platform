Rails.application.routes.draw do
  devise_for :customers
  devise_for :guides
  root to: 'pages#home'

  resources :tours
  resources :ratings, only: [ :new, :create, :show, :edit, :delete ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
