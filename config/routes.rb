Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  get "tasks", to: "tasks#index"
  post "tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
