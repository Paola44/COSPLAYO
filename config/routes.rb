Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :costumes, only:[:create, :new, :show, :index] do
    resources :reservations, only:[:new, :create]
  end
  namespace :owner do ==>> meme chose avec 'renter'
    resources :costumes, only: [:index]
  end
  namespace :owner do
    resources :reservations, only: [:index]
  end
end
