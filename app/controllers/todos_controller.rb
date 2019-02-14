class TodosController < ApplicationController
  before_action :authenticate_user!, only: :show
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end
  
end
