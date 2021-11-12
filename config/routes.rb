Rails.application.routes.draw do
  root "home#index"

  devise_for :trainers
  resources :teams
  resources :pokes

end
