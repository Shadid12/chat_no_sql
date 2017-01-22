Rails.application.routes.draw do
  resources :rooms do
    member do
      post :join
      post :leave
    end
  end
  devise_for :users
  root to: 'rooms#index'
  
end
