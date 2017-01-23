Rails.application.routes.draw do
  resources :rooms do
    member do
      post :join
      post :leave
    end
  end
  resources :messages, only: [:new, :create]
  devise_for :users
  root to: 'rooms#index'
  
  mount ActionCable.server, at: '/cable'
  
end
