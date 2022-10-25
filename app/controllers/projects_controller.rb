class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @projects = Project.all
  end

  def new
  end

  def create
    Project.create(
      tittle: params[:projects][:tittle],
      body: params[:projects][:body],
      user_id: params[:projects][:user_id],
      id:params[:projects][:id]
    )
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end
end
