class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    unless @task = Task.find_by_id(params[:id])
      redirect_to :tasks_path, alert: 'Task could not be found'
    end
  end

end
