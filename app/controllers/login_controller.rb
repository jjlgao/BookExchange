class LoginController < ApplicationController
  def login
    puts params
  end
  
  def create
    puts params
    session[:email] = params[:email]
    redirect_to '/'
  end
end
