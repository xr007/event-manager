Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #devise_for :users, controllers: {
    #sessions: 'users/sessions',
    #registrations: 'users/registrations',
    #passwords: 'users/passwords',
    #confirmations: 'users/confirmations',
    #unlocks: 'users/unlocks',
    #omniauth: 'users/omniauth'
  #}

  resources :events do
    resources :users
  end

  resources :users do
    resources :events
  end

  resources :user_event_datum
  resources :rsvp_lists
  # resources :About_Us, controller: 'About_Us'

  root "home#index"

end
