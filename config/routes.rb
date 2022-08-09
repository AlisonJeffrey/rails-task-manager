Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: 'tasks#index'

  # Read all aka list all tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  # Create a new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # Read one aka show one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update a single task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy aka delete a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
