Rails.application.routes.draw do
  root 'projects#index'
  resources :users, only: %i[new create show]
  resource :sessions, only: %i[new create show destroy]
  resources :projects
  resources :tasks, only: %i[new create]
end
