Rails.application.routes.draw do

  get 'home/index'

  mount RailsAdmin::Engine => '/administration', as: 'rails_admin'

  root to: "home#index"
  #devise_for :users
  devise_for :users, :controllers => {:omniauth_callbacks => 'users/omniauth_callbacks',
                                      sessions: 'users/sessions',
                                      :registrations => 'users/registrations'}
  #devise_for :admins, :controllers => {sessions: 'admins/sessions'}

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
