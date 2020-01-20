Rails.application.routes.draw do
  namespace :admin do
   resources :users
  end
  root to: 'pictures#index'
  resources :pictures
end
