Rails.application.routes.draw do
  resources :registrants
  root to: "domains#index"
  resources :domains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
