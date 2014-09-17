Rails.application.routes.draw do
  resources :questions, only:[:index,:show,:create,:new, :edit, :destroy]
end
