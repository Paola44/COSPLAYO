Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :costumes, only:[:create, :new, :show, :index] do
    resources :reservations, only:[:new, :create]
  end
  resources :reservations, only: [:index]

  namespace :owner do
    resources :costumes, only: [:index]
    resources :reservations, only: [:index] do
      member do
        patch "accept"
        patch "decline"
      end
    end
  end
end
