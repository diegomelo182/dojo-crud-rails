Rails.application.routes.draw do
  resources :compact_disks
  resources :genders
  resources :buiers
  resources :artists
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
