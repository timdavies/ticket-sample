Rails.application.routes.draw do
  root 'application#home'
  resources :tickets, only: %i(index new create)
end
