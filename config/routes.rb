Rails.application.routes.draw do
  # devise_for :accounts
  root to: 'home#index'
  resources :projects
  resources :teams

  devise_scope :account do
    # registrations
    get 'cancel', to: 'accounts/registrations#cancel', as: :cancel_account_registration
    get 'register', to: 'accounts/registrations#new', as: :new_account_registration
    get 'edit', to: 'accounts/registrations#edit', as: :edit_account_registration
    patch '', to: 'accounts/registrations#update', as: :account_registration
    put '', to: 'accounts/registrations#update'
    delete '', to: 'accounts/registrations#destroy'
    post '', to: 'accounts/registrations#create'

    # session
    get 'login', to: 'accounts/sessions#new', as: :new_account_session
    post 'login', to: 'accounts/sessions#create', as: :account_session
    delete 'logout', to: 'accounts/sessions#destroy', as: :destroy_account_session

    # password
    get 'password/new', to: 'devise/passwords#new', as: :new_account_password
    get 'password/edit', to: 'devise/passwords#edit', as: :edit_account_password
    patch 'password', to: 'devise/passwords#update', as: :account_password
    put 'password', to: 'devise/passwords#update'
    post 'password', to: 'devise/passwords#create'
  end

end
