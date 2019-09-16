class ProjectsController < ApplicationController
  def index
    @projects = policy_scope(Project)
  end

  def new
    @project  = Project.new
    authorize @project
    @managers = User.manager
  end

  def create
    @project = Project.new(project_params)
    redirect_to root_path if @project.save
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    authorize @project
    @managers = User.manager
  end

  def update
    @project = Project.find(params[:id])
    redirect_to root_path if @project.update_attributes(project_params)
  end

  def destroy
    @project = Project.find(params[:id])
    authorize @project
    @project.destroy
    redirect_to root_path if @project.destroy
  end

  def assign_developer
    @developers = User.developer
    @project = Project.find(params[:id])
    authorize @project
    @project_user = @project.users
  end

  def add_developer
    @project = Project.find(params[:id])
    @project.users << User.find(params[:user_id])

    redirect_back fallback_location: root_path
  end

  def remove_developer
    @project = Project.find(params[:id])
    @user_id = User.find(params[:user_id])
    @project.users.destroy(@user_id)

    redirect_back fallback_location: root_path
  end

  def assign_sqa
    @sqa = User.sqa
    @project = Project.find(params[:id])
    authorize @project
    @project_user = @project.users
  end

  def add_sqa
    @project = Project.find(params[:id])
    @project.users << User.find(params[:user_id])

    redirect_back fallback_location: root_path
  end

  def remove_sqa
    @project = Project.find(params[:id])
    @user_id = User.find(params[:user_id])
    @project.users.destroy(@user_id)

    redirect_back fallback_location: root_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :manager_id)
  end
end
