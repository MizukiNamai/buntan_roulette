Rails.application.routes.draw do
  namespace :api do
    get 'tasks/show'
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'pages#top'
  post :linebot, to: 'linebot#recieve'
  resources :pages, only: %i[create new]
  resources :tasks, only: %i[create new]
  get 'pages/guide'
  namespace :api do
    resources :tasks, only: %i[show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
