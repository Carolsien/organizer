Rails.application.routes.draw do

  root 'static_pages#index'

  get   'help'    => 'static_pages#help'
  get   'about'   => 'static_pages#about'

  devise_for :users, controllers: {
             registrations: 'users/registrations',
             confirmations: 'users/confirmations',
             passwords: 'users/passwords',
             sessions: 'users/sessions',
             unlocks: 'users/unlocks'
           }
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
