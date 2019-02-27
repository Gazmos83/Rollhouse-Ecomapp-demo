class RegistrationsController < Devise::RegistrationsController

  def create
    #super renders all of the code in the controller
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver
    end
  end

end
