class ApiController < ApplicationController
  def create
    @newTask = current_user.tasks.create(title: params[:title], description: params[:description], due_date: params[:dueDate])

    render json: @newTask
  end

  def index
    @tasks = current_user.tasks

    render json: @tasks
  end

  def complete
    @task = Task.find(params[:id])
    @task.active = false
    @task.save!

    render json: @task
  end
end
