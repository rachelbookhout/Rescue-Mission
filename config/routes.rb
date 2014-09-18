Rails.application.routes.draw do
  root 'questions#index'
  match "/auth/:provider/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, via: [:get, :post]
  resources :questions, only:[:index,:show,:create,:new, :edit, :destroy, :update] do
  resources :answers, only:[:create]
end
resources :users, only:[:create]
end
