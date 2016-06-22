Rails.application.routes.draw do

  get 'profiles/main'
  get 'profiles/empty'

  resources :teams
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :projects do
    resources :my_assets
  end

  root 'profiles#main'

end
