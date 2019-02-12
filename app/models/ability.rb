
class Ability
  include CanCan::Ability

  def initialize(user)
    if
      user ||= User.new # guest
      can :manage, User, id: user.id
    else
      user.admin?  # administrators
      can :manage, :all
    end
  end
end
