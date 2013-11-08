class User < ActiveRecord::Base
  attr_accessible :dob, :email, :name, :regular, :sex, :photo, :password_digest, :password, :password_confirmation
  has_secure_password
  has_many :posts, :dependent => :destroy
  
  def username
	username = self.name + " " + self.email
  end
	
  def age
	age = ((Date.current - self.dob)/365).to_i
  end
	
end
