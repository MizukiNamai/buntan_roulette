Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'pages#top'
  resources :pages, only: %i[create new]
  resources :roulettes, only: %i[create new]
  get 'pages/guide'
  get 'pages/choice'
  post 'roulettes/new'
  get 'roulettes/create'
  post 'roulettes/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
