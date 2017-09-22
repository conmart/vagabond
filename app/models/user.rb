class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :email, uniqueness: true
  validates :name, :email, :current_city, presence: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
