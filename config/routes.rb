Rails.application.routes.draw do
  root 'application#home'
  resources :tickets
end
