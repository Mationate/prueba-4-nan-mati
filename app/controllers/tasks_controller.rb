class TasksController < ApplicationController

  def create
    todo = Todo.find(params[:todo_id])
    task = Task.new(
      user: current_user,
      todo: todo,
      completed: true
    )
    if task.save
      redirect_to todos_path, notice: 'Has completado tu tarea !'
    else
      redirect_to todos_path, alert: 'Error al completar tu tarea :C'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to todos_path, notice: 'Ya no has completado la tarea'
  end
  
  
end
