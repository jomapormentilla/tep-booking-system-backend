Rails.application.routes.draw do
  resources :nav_items
  resources :room_data
  resources :users
  resources :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
