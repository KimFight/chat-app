Rails.application.routes.draw do
  
  devise_for :users
    root to: "messages#index"
    # root 'コントローラー#アクション'はトップページにアクセスしたときのルーティングを
    # MessagesController の index アクションに設定するという意。
   
    resources :users, only: [:edit, :update]
    #resources :●●と書くのみで複数のルーティングが定義される。
    resources :rooms, only: [:new, :create]
  end
