class Ability
  include CanCan::Ability

  def initialize(user)
      if user
        if user.kind == 'worker'
          can :access, :rails_admin
          can :dashboard
          can :manage, Client
          can :manage, Schedule
        elsif user.kind == 'manager'
          can :manage, :all
        end
      end
    end
end
