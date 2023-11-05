Rails.application.routes.draw do
 # get 'books/top'
 # get 'lists/new'
 # get 'lists/index'
 # get 'lists/show'


 devise_for :users

  root to: "homes#top"
  get "homes/about"
  get "users/sign_up"
  get "users/sign_in"
  # post 'lists' => 'lists#create'
  # get 'lists' => 'lists#index'
  get 'users' => 'users#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
   resources :users, only: [:show, :edit, :update]
  resources :books, only: [:new, :create, :index, :show, :update, :destroy]

 # resources :post_images, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
