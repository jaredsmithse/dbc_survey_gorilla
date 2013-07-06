require 'bcrypt'

class User < ActiveRecord::Base
  has_many :responses
  has_many :surveys
  has_many :choices, :through => :responses

  validates :email, uniqueness: true
  validates :email, :name, :password_hash, presence: true
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


  def self.authenticate(email, user_password)
    user = User.find_by_email(email)
    return nil if user == nil
    user if user.password == user_password  
  end
end
