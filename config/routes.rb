Rails.application.routes.draw do
  root :to => 'stories#index'

  resources :stories do
    resources :additions
  end

  resources :additions do
    resources :images
  end
end
