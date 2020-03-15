Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :games, only: [:index, :create, :new, :show]
  # authenticated :user do
  #   root 'games#index', as: :authenticated_root
  # end

  resources :games, only: [:index, :new, :create, :show]
  resources :cards, only: [:index]
end
