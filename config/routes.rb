Rails.application.routes.draw do
  root to: 'site/home#index'

  namespace :site do
    get 'home/index'
  end

  resources :user_profile
  resources :animals
  
  devise_for :admins
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
