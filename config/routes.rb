Rails.application.routes.draw do
  resources :users do 
    resources :pets
  end
  resources :pets
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'signup', to: 'users#create'
end
