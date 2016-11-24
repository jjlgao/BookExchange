class RegistrationController < ApplicationController
  def register
  end

  def new_seller
  	@seller = Seller.new
  	@seller.name = params[:name]
  	@seller.email = params[:email]
  	@seller.save!
  	
  	redirect_to login_path
  end

end
