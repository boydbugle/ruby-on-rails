class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def new
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new(project_params)
    if @project.save
      redirect_to @skill
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to @skill
    else
      render :edit
    end
  end
  
  def destroy
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to skills_admin_path
  end

  private
  def project_params
    params.require(:project).permit(:name,:image,:description,:link)
  end
end
