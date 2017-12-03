class User < ApplicationRecord
  has_many :orders

  validates :email, :presence => true
  validates :email, :uniqueness => true

  validates :username, :presence => true
  validates :username, :uniqueness => true

  validates :password, :presence => true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def email_required?
    false
  end
end
