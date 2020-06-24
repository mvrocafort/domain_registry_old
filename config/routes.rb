Rails.application.routes.draw do

devise_scope :user do
  authenticated :user do
    root 'domains#search', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  devise_for :users
  resources :registrants
  resources :details
  resources :domains

  get 'search/result' => 'domains#result', :as => 'result_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
