Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :contacts, only: [:new, :create]
  root 'posts#index'
  get 'tags/:tag', to: 'posts#index', as: :tag
  get '*path' => redirect('/')
end
