Rails.application.routes.draw do
  post 'auth/signin', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'item', to: 'items#create'
  get 'item', to: 'items#index'
end
