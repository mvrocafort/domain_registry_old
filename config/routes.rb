Rails.application.routes.draw do
  resources :registrants
  devise_for :users

  resources :users
  resources :domains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
