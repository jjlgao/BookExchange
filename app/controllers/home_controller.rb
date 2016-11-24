class HomeController < ApplicationController
    def index
        @seller = Seller.all
        @all_books = Book.all
        render "home" 
    end
    
    def show
        @seller = Seller.find_by_id(params[seller_id])
        @books = seller.books
    end
end
