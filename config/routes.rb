Rails.application.routes.draw do
  resources :questions, only:[:index,:show,:create,:new, :edit, :destroy] do
  resources :answers, only:[:create]
end
end
