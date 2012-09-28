class ProjectsController < ApplicationController
  def index

  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(params[:project])
    @project.save
    flash[:notice] = "Project has been created."
    flash[:alert] = "nur ne warnung"
    redirect_to project_path(@project)
  end
  def show
    @project = Project.find(params[:id])
  end
end
