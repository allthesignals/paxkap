class User < ActiveRecord::Base
  attr_accessor :name, :email, :address, :last_name

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase }
  validates :name, :last_name, :address, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }

end
