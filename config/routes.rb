Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :follows, only: [:new, :create]
    resources :listtags, only: [:create]
    resources :bookmarks, only: [:index]
    resources :items, only: [:index, :destroy, :update] do
      resources :bookmarks, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
      resources :comments, only: [:new, :create]
    end
  end

  resources :items, only: [:new, :create]

end
