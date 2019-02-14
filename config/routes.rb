Rails.application.routes.draw do
  devise_for :users

  resources :todos, only: %i[index show] do
    resources :tasks, only: %i[create]
    delete 'uncompleted', to: 'tasks#destroy'
  end
  root 'todos#index'
end


  
