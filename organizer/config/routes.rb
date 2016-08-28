Rails.application.routes.draw do

  resources :church_ceremonies
  resources :guests
  resources :bride_beauticans
  resources :bride_hairdressers
  resources :bride_accessories
  resources :bride_dresses
  root 'static_pages#index'

  get   'help'    => 'static_pages#help'
  get   'about'   => 'static_pages#about'
  get   'bride'   => 'static_pages#bride'
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

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
