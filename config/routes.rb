Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'chat_rooms#index'
  resources :users,only:[:new,:create]
  resources :sessions
  get 'login' , to: 'sessions#new'
  delete 'logout' ,to: 'sessions#destroy'
end
