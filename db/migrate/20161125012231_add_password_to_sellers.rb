class AddPasswordToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :password, :string
  end
end
