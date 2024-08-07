Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :show, :edit, :update, :index]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]

  # devise_scope :user do
  #   get '/users/sign_out', to: 'devise/sessions#destroy'
  # end
  root to: "homes#top"
  get '/home/about' => 'homes#about' ,as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
