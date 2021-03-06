Rails.application.routes.draw do

  resources :cars do
    post 'favourite', to: 'favourites#create'
    delete 'unfavourite',to: 'favourites#delete'
  end

  get 'favourites',to: 'favourites#index'
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
