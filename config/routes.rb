Rails.application.routes.draw do
  root 'projects#index'
  patch '/projects/:id/edit',to: 'projects#edit'
  resources :projects
  resources :tasks, only: %i[get new create]

end
