class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true
  	
  def self.authenticate(username)
    user = find_by_email(username)
  end
  
end
