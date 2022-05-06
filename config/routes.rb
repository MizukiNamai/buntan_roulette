Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'pages#top'

  get 'pages/guide'
  get 'choice/new'
  post 'choice/new'
  get 'roulettes/new'
  post 'roulettes/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
