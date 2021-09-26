Rails.application.routes.draw do
  
  get 'comments/new'
  get 'comments/create'
  get 'comments/destroy'
  get 'comments/show'
  get 'favorites/create'
  get 'favorites/destroy'
  root 'tweets#index'  # 追加

# ===========ここはいらないので削除orコメントアウト==========
#  get 'tweets/new'
#  get 'tweets/index'
#  get 'tweets/show'
#  get 'tweets/create'
#  get 'users/index'
#  get 'users/show'
#==================================================

  devise_for :users

  resources :tweets  do
    resource :favorites, only: [:create, :destroy]
    resource :comments
  end
  
  resources :users  # 追加


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
  