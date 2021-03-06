class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	after_create :welcome_send

	has_many :participants
	has_many :events, through: :participants

	def welcome_send
		WelcomeMailer.welcome_email(self).deliver_now
	end
end
