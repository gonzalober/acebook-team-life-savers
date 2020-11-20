Rails.application.routes.draw do
  root 'sessions#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  post '/log_out' => 'sessions#destroy'
  get '/new' => 'users#new'
  resources :sessions
  post '/comment_post' => 'posts#comment'
end
