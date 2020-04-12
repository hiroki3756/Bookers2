Rails.application.routes.draw do
  devise_for :users
  root 'users#top'
  get '/home' => 'books#home'
  get '/about' => 'books#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :users
end
