class WelcomeMailer < ApplicationMailer
	def welcome_email(user)
		

	  	@user = user
	 
	  	@url = "http://eventbrite.be/login"

		mail(to: @user.email, subject: "Bienvenue sur Eventbrite")

  	end
end
