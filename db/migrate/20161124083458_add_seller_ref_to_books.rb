class AddSellerRefToBooks < ActiveRecord::Migration
  def change
    add_reference :books, :seller, index: true, foreign_key: true
  end
end
