Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :costumes, only:[:create, :new, :show, :index] do
    resources :reservations, only:[:new, :create]
  end
  namespace :users do
    resources :costumes, only: [:index]
  end
  namespace :users do
    resources :reservations, only: [:index]
  end
end
