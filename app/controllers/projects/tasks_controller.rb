class Projects::TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:show, :new, :edit, :create, :update, :destroy]

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.project_id = @project.id

    respond_to do |format|
      if @task.save
        format.html { redirect_to project_url(@task.project_id), notice: "Task was created successfully!"}
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to project_url(@task.project_id), notice: "Task was updated successfully!"}
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to project_url(@task.project_id), notice: "Task was deleted successfully!"}
      format.json { head :no_content }
    end
  end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def task_params
      params.require(:task).permit(:title, :description, :project_id, :completed, :task_file)
    end
end
