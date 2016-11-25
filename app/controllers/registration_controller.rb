class RegistrationController < ApplicationController
  def register
  	@invalid = params[:inv]
  end

  def new_seller
  	@seller = Seller.new
  	@seller.name = params[:name]
  	@seller.email = params[:email]
  	@seller.password = params[:password]

  	if @seller.valid? 
  		@seller.save!
  		redirect_to login_path
  	else 
  		redirect_to sellers_new_path(inv: true)
  	end

  end

end
