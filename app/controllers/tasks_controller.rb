class TasksController < ApplicationController

  def create
    todo = Todo.find(params[:todo_id])
    task = Task.new(
      user: current_user,
      todo: todo,
      completed: true
    )

    if task.save
      redirect_to todos_path, notice: 'Has completado tu tarea'
    else
      redirect_to todos_path, alert: 'Error al completar tu tarea'
    end
    
  end
  
end
