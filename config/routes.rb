Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
  }
  root to: 'pages#home'

  resources :tours
  resources :ratings, only: [ :new, :create, :show, :edit, :delete ]
  resources :tourpaintings
  resources :paintings
  resources :dashboards
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tours do
    member do
      post 'publish', to: "tours#published"
    end
  end
end
