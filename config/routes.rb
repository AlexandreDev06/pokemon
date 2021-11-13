Rails.application.routes.draw do
  root "teams#index"

  devise_for :trainers
  resources :teams
  resources :pokes

end
