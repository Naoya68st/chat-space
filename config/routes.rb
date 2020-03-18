Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index" #ルートパスへのアクセスがあったら、messages_controllerのindexのアクションが呼び出される
  resources :users, only: [:edit, :update]
end
