class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new # guest user (not logged in)
      if user.role == "Super Admin"
       can :manage, :all
      elsif user.role == "Admin"
         can :manage, :all
         cannot :create, User
       elsif user.role == "User"
       	 can :read, :all
       	elsif user.role == "Student"
       	 can :read, :all 
       	 can :create, [Sample, Parameter, CustomParameter]
       end
  end
end
