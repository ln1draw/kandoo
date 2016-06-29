class ApiController < ApplicationController
  def create
    @newTask = current_user.tasks.create(title: params[:title], description: params[:description], due_date: params[:dueDate])

    render json: @newTask
  end

  def index
    @tasks = current_user.tasks

    render json: @tasks
  end
end
