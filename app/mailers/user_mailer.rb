class UserMailer < ActionMailer::Base
  default from: "from@example.com"
 
  def new_registration(user)
    @user = user
    mail(to: user.mail,
    	subject: "You have been registered to AX database")
  end
end
