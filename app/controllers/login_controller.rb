class LoginController < ApplicationController
  def login
    @id = Rails.application.config.current_seller_id
    if @id.nil? 
      @invalid = params[:inv]
    else
      redirect_to sellers_account_path(curr_sell_id: @id)
    end
  end
  
  def create
    @user = Seller.find_by_email(params[:email])

    if (@user.nil? or @user.password != params[:password])
      redirect_to login_login_path(inv: true)
    else
      Rails.application.config.current_seller_id = @user.id
      redirect_to '/'
    end
  end
end
