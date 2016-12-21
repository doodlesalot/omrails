class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # removed :recoverable until mailer is setup
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :tweets
  has_many :wants
end
