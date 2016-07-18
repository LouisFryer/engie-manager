Rails.application.routes.draw do
  resources :order_items
  resources :orders

  root to: 'orders#index'


end