Rails.application.routes.draw do
  root to: 'home#index'
  resources :projects
  resources :teams
end