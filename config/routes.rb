Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'index#index'
  resources :index, only: [:index]
  resources :arrays, only: [:index]
  resources :squads, only: [:index]
end
