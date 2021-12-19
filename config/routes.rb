Rails.application.routes.draw do
  root "home#index"
  get 'search', to: 'search#pokes'
  post 'batles_attack', to: 'batles#attack'
  post 'batles_defense', to: 'batles#defense'
  post 'batles_items', to: 'batles#items'
  post 'batles_skip', to: 'batles#skip'

  devise_for :trainers
  resources :teams
  resources :pokes
  resources :batles

end
