
class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'chimericano@gmail.com',
         subject: "A new contact form message from #{name}")
  end
  def welcome(user)
		@appname = "vacationdestinations"
    @user = user
		mail(to: user.email,
			subject: "Welcome to #{@appname}!")
	end
  def order_confirmation(order)
    @order = order
    mail(to: order.user.email,
    subject: "Order confirmation")
end
end
