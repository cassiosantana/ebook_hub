Rails.application.routes.draw do
  devise_for :users
  resources :ebooks

  root "home#index"
end
