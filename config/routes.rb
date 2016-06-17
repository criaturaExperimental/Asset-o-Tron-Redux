Rails.application.routes.draw do

  resources :projects do
    resources :my_assets
  end

  root 'projects#index'

end
