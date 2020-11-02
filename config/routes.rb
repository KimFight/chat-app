Rails.application.routes.draw do
  
  devise_for :users
    root to: "rooms#index"
    # root to: 'コントローラー#アクション'はトップページにアクセスしたときのルーティング
    
    resources :users, only: [:edit, :update]
    #resources :●●と書くのみで複数のルーティングが定義される。
    resources :rooms, only: [:new, :create] do
      resources :messages, only: [:index, :create]
    end
    # do ~ end でネスト。
    # roomsが親で、messagesが子という親子関係(チャットルームに属しているメッセージという意味)
  end
