Rails.application.routes.draw do
 
  # get 'home/index'
  resources :todos do
    resources :items
  end
  resources :users
  post 'login', to: 'authentication#login'
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
