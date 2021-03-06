Rails.application.routes.draw do
  get 'tags/index'
  get 'tags/show'
  root to: 'homes#top'
  devise_for :users
  resources :photos do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
  resources :users do
    resource :follow
    resources :followings
    resources :followers
    get :favorites, on: :collection
  end
  resources :tags, only: [:index, :show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
