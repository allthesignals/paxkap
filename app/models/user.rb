class User < ActiveRecord::Base

  # devise :database_authenticatable, :registerable,
  #      :recoverable, :rememberable, :trackable, :validatable
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :address, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }, length: { maximum: 50 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  has_many :campaigns


end
