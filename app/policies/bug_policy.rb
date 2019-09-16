class BugPolicy < ApplicationPolicy
  attr_reader :user, :bug

  def initialize(user, bug)
    @user = user
    @bug = bug
  end

  def index?; end

  def create?
    user.sqa?
  end

  def new?
    create?
  end

  def update?
    user.admin? || user.sqa?
  end

  def edit?
    update?
  end

  def destroy?
    user.sqa?
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.admin? || user.sqa?
        scope.all
      elsif user.manager?
        scope.where(project_id: user.created_projects.pluck(:id))
      else
        user.bugs
      end
    end
  end
end
