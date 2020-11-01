Rails.application.routes.draw do
  
  devise_for :users
    root  to: "rooms#index"
    # root to: 'コントローラー#アクション'はトップページにアクセスしたときのルーティング
    
    resources :users, only: [:edit, :update]
    #resources :●●と書くのみで複数のルーティングが定義される。
    resources :rooms, only: [:new, :create]
  end
