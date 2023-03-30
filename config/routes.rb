Rails.application.routes.draw do
  resources :appointments
  resources :users do 
    resources :pets
  end
  resources :pets

  #get the current logged in user
  get "/user", to: "user#show"

  ##log in user
  post 'login', to: 'sessions#create'

  ##logout user
  delete 'logout', to: 'sessions#destroy'

  ##signup user
  post 'signup', to: 'users#create'
end
