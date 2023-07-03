Rails.application.routes.draw do
  root "prices#index"
  devise_for :users
  resources :prices
end
