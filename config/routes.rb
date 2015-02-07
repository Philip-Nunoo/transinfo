Rails.application.routes.draw do
  root 'home#index'

  get 'dashboard/line_view'
  get 'dashboard/map_view'
  get 'dashboard/path', as: :search_location
  get 'dashboard/tel_data', as: :telco

  get 'home/index'
  get 'home/details'
  
  resources :congestions
  resources :locations
  resources :shops
end
