Rails.application.routes.draw do

  devise_for :users
  resources :projects do
    resources :my_assets
  end

  root 'projects#index'

end
