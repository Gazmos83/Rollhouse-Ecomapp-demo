class SimplePagesController < ApplicationController

  def index
    @products = Product.limit(6)
  end

  def landing_page
    @products = Product.limit(6)
    @featured_product = Product.first
  end

  def thank_you
   @name = params[:name]
   @email = params[:email]
   @message = params[:message]
   UserMailer.contact_form(@email, @name, @message).deliver_now
   ActionMailer::Base.mail(from: @email,
     to: 'chimerican@gmail.com',
     subject: "You're great #{@name}. Thanks for getting in touch",
     body: @message).deliver_now
 end

end
