class HomeController < ApplicationController
    def index
        @seller = Seller.all
        @all_books = Book.all
        if not params[:search].nil? and params[:search].length > 0
            @all_books = Book.where('name LIKE ?','%' + params[:search] + '%')
        end

        @current_seller_id = Rails.application.config.current_seller_id
        
        if not @current_seller_id.nil?
        	@current_seller_name = Seller.find(@current_seller_id).name
        end

        render "home" 
    end
    
    def show
        @seller = Seller.find_by_id(params[seller_id])
        @books = seller.books
    end
end
