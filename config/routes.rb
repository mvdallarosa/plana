Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  authenticated :user do
    root 'pages#edit', as: :authenticated_root
  end
  root to: 'pages#home'
  # get "/dashboard", to: 'pages#dashboard'
  get "/dashboard", to: 'pages#edit'
  patch  "/dashboard", to: 'pages#update'
  get "/welcome", to: 'pages#welcome'
  get "/intro", to: 'pages#intro'
  get "/discover", to: 'pages#discover'
  get "/questionnaire", to: 'questionnaire#edit'
  patch  "/questionnaire", to: 'questionnaire#update'
  get "/challenges", to: "commitments#new"
  post "/challenges", to: "commitments#create"
  get "/profile", to: 'pages#profile'
  get '/footprint', to: 'footprints#show'
  resources :favorites, only: [ :show ]
  get '/ranking', to: 'pages#ranking'
  resources :categories, only: [ :index, :show ]
  # resources :challenges, only: [ :index ]
  resources :commitments, only: [ :new ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
