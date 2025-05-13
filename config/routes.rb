Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "/tasks", to: "tasks#index", as: :all_tasks

  get "/tasks/new", to: "tasks#new", as: :new_task

  post "/tasks", to: "tasks#create"

  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task

  patch "/tasks/:id", to: "tasks#update"

  delete "/tasks/:id", to: "tasks#destroy"

  get "/tasks/:id", to: "tasks#show", as: :task
end
