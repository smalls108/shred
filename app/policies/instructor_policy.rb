class InstructorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    user == record.user
  end

  def create?
    user && !user.instructor&.persisted?
  end

end
