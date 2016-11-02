class Customer < ApplicationRecord
	has_many :bill_containers
	has_many :book_rooms, :dependent => :destroy
	has_many :rooms
	validates_uniqueness_of :first_name, scope: :last_name
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone_number, presence: true
	validates :sex, presence: true
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	def self.desc_order
		order("created_at DESC")
	end 
end
