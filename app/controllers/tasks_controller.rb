class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def edit
     @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end

private

  def task_params
    params.require(:task).permit(:name, :done)
  end

end


