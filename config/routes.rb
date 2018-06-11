Rails.application.routes.draw do
  devise_for :users
  get 'posts/notuser'
  get 'posts/folw'
  get 'posts/mypage'
  get 'posts/followings'
  root 'posts#index'
  resources :posts, except: [:show] do
    resources :comments, only: [:create, :destroy]
  end
  resources :follows, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
