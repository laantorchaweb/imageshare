class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # add :recoverable when the email is configured
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :pins
end
