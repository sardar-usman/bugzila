class ProjectPolicy
  attr_reader :user, :project

  def initialize(user, project)
    @user = user
    @project = project
  end

  def index?; end

  def show?
    user.admin? || project.manager_id == user.id
  end

  def create?
    user.admin? || user.manager?
  end

  def new?
    create?
  end

  def update?
    user.admin? || project.manager_id == user.id
  end

  def edit?
    update?
  end

  def destroy?
    user.admin? || project.manager_id == user.id
  end

  def assign_developer?
    user.admin? || project.manager_id == user.id
  end

  def assign_sqa?
    user.admin? || project.manager_id == user.id
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin?
        scope.all
      elsif user.manager?
        scope.where(manager_id: user.id)
      else
        user.projects
      end
    end
  end
end
