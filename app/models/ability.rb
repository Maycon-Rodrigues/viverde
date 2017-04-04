class Ability
  include CanCan::Ability

  def initialize(user)
      if user
        if user.kind == 'usr'
          can :access, :rails_admin
          can :dashboard
          can :manage, Client, user_id: user.id
        elsif user.kind == 'manager'
          can :manage, :all
        end
      end
    end
end
