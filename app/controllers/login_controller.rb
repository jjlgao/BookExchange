class LoginController < ApplicationController
  def login
    puts params
  end
  
  def create
    @user = Seller.find_by_name(params[:email])

    if (@user.nil? or @user.password != params[:password])
      return redirect_to '/', notice: "Invalid email or password"
    else
      session[:user_id] = @user.id
    end
    
    redirect_to '/'
  end
end
