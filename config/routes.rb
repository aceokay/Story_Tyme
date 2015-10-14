Rails.application.routes.draw do
  resources :stories do
    resources :additions
  end

  resources :additions do
    resources :images
  end
end
