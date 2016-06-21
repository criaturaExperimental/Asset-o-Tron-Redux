Rails.application.routes.draw do

  resources :teams
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :projects do
    resources :my_assets
  end

  root 'projects#index'

end
