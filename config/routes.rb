Rails.application.routes.draw do
  get 'collection/page'
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#page"
end
