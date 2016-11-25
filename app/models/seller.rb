class Seller < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	# validates :encrypted_password, presence: true

    has_many :books
end
