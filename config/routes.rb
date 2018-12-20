Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :follows, only: [:create, :destroy]
    resources :listtags, only: [:create]
    resources :items, only: [:index, :destroy, :update, :edit] do
      resources :bookmarks, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end

  resources :bookmarks, only: [:index]
  resources :users, only: [:show]

  get 'profile', to: 'users#profile'
  resources :friendships, only: [:index]

  resources :items, only: [:new, :create] do
    collection do
      get :autocomplete
    end
  end
end
