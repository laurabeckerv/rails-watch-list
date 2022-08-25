Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :lists do
    resources :reviews, only: [:new, :create]
  end
end
