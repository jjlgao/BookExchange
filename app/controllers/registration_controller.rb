class RegistrationController < ApplicationController
  def register
  end

  def new_seller
  	@seller = Seller.new
  	@seller.name = params[:name]

  	@seller.save!
  	
  	redirect_to root_path
  end

end
