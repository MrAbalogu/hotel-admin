class Customer < ApplicationRecord
	has_many :bill_containers
	has_many :book_rooms, :dependent => :destroy
	has_many :room_customers
	has_many :rooms, :through => :room_customers
	validates_uniqueness_of :first_name, scope: :last_name
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone_number, presence: true
	validates :sex, presence: true

	def self.desc_order
		order("created_at DESC")
	end 
end
