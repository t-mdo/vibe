Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  resources :buddies, only: [:create]
  resources :daily_statuses, only: [:create]

  root to: 'home#show'
end
