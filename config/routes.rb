Rails.application.routes.draw do

  get 'profiles/main'

  resources :teams do
    resources :comments, module: :teams
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :projects do
    resources :my_assets do
      resources :comments, module: :my_assets
    end
    resources :comments, module: :projects
  end

  root 'profiles#main'

end
