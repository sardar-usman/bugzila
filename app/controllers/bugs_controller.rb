class BugsController < ApplicationController
  def index
    @bugs = policy_scope(Bug)
  end

  def new
    @bugs = Bug.new
    @user = current_user
    @projects = @user.projects
    if params[:project_id].present?
      @developers = Project.find(params[:project_id]).users.developer
    else
      @developers = User.developer
    end
    if request.xhr?
      respond_to do |format|
        format.json do
          render json: { developers: @developers }
        end
      end
    end
  end

  def create
    @bug = Bug.new(bug_params)
    redirect_to bugs_path if @bug.save
  end

  def edit
    @bug = Bug.find(params[:id])
    @user = current_user
    @projects = @user.projects
    @users = User.developer
  end

  def update
    @bug = Bug.find(params[:id])
    redirect_to root_path if @bug.update_attributes(bug_params)
  end

  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    redirect_to root_path if @bug.destroy
  end

  def update_status
    @bug = Bug.find(params[:id])
    @bug.bug_state
    redirect_back fallback_location: bugs_path
  end

  private

  def bug_params
    params.require(:bug).permit(:project_id, :title, :severity, :actual_result, :expected_result, :user_id, :screen_shot)
  end
end
