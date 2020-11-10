Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }
  authenticated :user do
    root 'pages#dashboard', as: :authenticated_root
  end
  root to: 'pages#home'
  # get "/dashboard", to: 'pages#dashboard'
  get "/dashboard", to: 'pages#dashboard'
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
  get '/tripcalculator', to: 'pages#tripcalculator'
  resources :favorites, only: [ :show ]
  get '/ranking', to: 'pages#ranking'
  resources :categories, only: [ :index, :show ]
  # resources :challenges, only: [ :index ]
  resources :commitments, only: [ :new ]

  get 'relationships/follow_user'
  get 'relationships/unfollow_user'
  post '/follow_user', to: 'relationships#follow_user', as: :follow_user
  post '/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
