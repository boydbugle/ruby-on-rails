class ProjectsController < ApplicationController
  def show
  end

  def new
    @skill = Skill.all
    @project = Project.new
  end

  def create
    @skill = Skill.find(params[:id])
    @project = @skill.projects.new(project_params)
    if @project.save
      redirect_to skills_path
    else
      render :new
    end
  end

  def edit
  end

  private
  def project_params
    params.require(:project).permit(:name,:description,:link)
  end
end
