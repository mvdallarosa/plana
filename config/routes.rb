Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'pages#dashboard'
  get "/welcome", to: 'pages#welcome'
  get "/intro", to: 'pages#intro'
  get "/discover", to: 'pages#discover'
  get "/questionnaire", to: 'questionnaire#edit'
  patch  "/questionnaire", to: 'questionnaire#update'
  get "/profile", to: 'pages#profile'
  resources :favorites, only: [ :show ]
  get '/ranking', to: 'pages#ranking'
  resources :categories, only: [ :index, :show ]
  resources :challenges, only: [ :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
