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
  post '/callback' => 'linebot#callback'
  resources :pages, only: %i[create new]
  resources :tasks, only: %i[create new]
  resources :contacts, only: %i[new create]
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'pages/guide'
  get 'linebot/push'
  namespace :api do
    resources :tasks, only: %i[show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
