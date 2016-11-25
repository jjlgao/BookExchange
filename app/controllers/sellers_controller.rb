class SellersController < ApplicationController
  def new
  end

  def create
  end

  def account
  	@id  = Rails.application.config.current_seller_id
  	if @id.nil?
  		redirect_to login_path
  	else
  		@invalid = params[:inv]
  		@seller_id = params[:curr_sell_id]
  		@seller = Seller.find(@seller_id)
  		@seller_name = @seller.name
  		@seller_email = @seller.email
  		@seller_books = @seller.books
 		render "account.html.erb"
  	end
  end

  def delete_book
  	@id  = Rails.application.config.current_seller_id

  	@deleted_book = Book.find(params[:deleted_book])
  	@deleted_book.destroy
  	redirect_to sellers_account_path(curr_sell_id: @id)
  end

  def add_book
  	@id  = Rails.application.config.current_seller_id

  	if params[:name] == "" or params[:price].nil? or params[:image].nil?
  		redirect_to sellers_account_path(curr_sell_id: @id, inv: true)
  	else
  		@book = Book.new
  		@book.name = params[:name]
  		@book.price = params[:price]
  		@book.image = params[:image]
  		@book.seller_id = @id
  		@book.save!

  		redirect_to sellers_account_path(curr_sell_id: @id)
  	end
  end

  def logout
  	Rails.application.config.current_seller_id = nil
  	redirect_to '/'
  end
end
