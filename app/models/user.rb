class User < ApplicationRecord
	after_create :welcome_send

	def welcome_send
		WelcomeMailer.welcome_email(self).deliver_now
	end
end
