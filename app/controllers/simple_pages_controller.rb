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
  
 end

end
