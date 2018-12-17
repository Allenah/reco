Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :follows, only: [:create, :destroy]
    resources :listtags, only: [:create]
    resources :bookmarks, only: [:index]
    resources :items, only: [:index, :destroy, :update, :edit] do
      resources :bookmarks, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
      resources :comments, only: [:new, :create]
    end
  end

  resources :users, only: [:show]

  resources :items, only: [:new, :create]
  get 'profile', to: 'users#profile'
  resources :friendships, only: [:index]

  resources :items, only: [:new, :create] do
    collection do
      get :autocomplete
    end
  end
end
