class TodosController < ApplicationController
  before_action :authenticate_user!, only: :show
  def index
    @todos = Todo.all
    @tasks = Task.all
    #@uncompleted_tasks = current_user.tasks.where(completed: false)
  end

  def show
    @todo = Todo.find(params[:id])
    @tasks = Task.where(todo: @todo)
  end
end
