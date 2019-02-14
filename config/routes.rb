Rails.application.routes.draw do
  devise_for :users

  resources :todos, only: %i[index show] do
    resources :tasks, only: :create
  end

  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
