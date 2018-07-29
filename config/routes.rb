Rails.application.routes.draw do
  root 'landmarks#index'
  resources :landmarks
end
