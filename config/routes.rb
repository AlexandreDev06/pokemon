Rails.application.routes.draw do
  root "home#index"
  get 'search', to: 'search#pokes'

  devise_for :trainers
  resources :teams
  resources :pokes
  resources :batles

end
