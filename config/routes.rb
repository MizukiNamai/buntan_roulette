Rails.application.routes.draw do
  namespace :api do
    get 'tasks/show'
  end
  devise_for :users,controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'pages#top'
  resources :pages, only: %i[create new]
  resources :tasks, only: %i[create new]
  get 'pages/guide'
  namespace :api do
    resources :tasks, only: %i[show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
