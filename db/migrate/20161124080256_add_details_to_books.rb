class AddDetailsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :price, :decimal
    add_column :books, :image, :string
  end
end
