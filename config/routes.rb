Rails.application.routes.draw do
  root 'projects#index'
  get '/signup', to: 'users#new', as: 'users'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create', as: 'session'
  resources :projects
  resources :tasks, only: %i[new create]
end
