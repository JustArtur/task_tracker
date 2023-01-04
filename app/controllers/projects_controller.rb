class ProjectsController < ApplicationController
  before_action :require_login

  def index
    @projects = Project.all.where(user_id: current_user.id)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    redirect_to project_path(@project.id)
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:tittle, :body, :user_id)
  end
end
