class ApplicationMailer < ActionMailer::Base
  	default from: 'nils.lpzz@gmail.com'
  	layout 'mailer'

  	def welcome_email(user)
		

	  	@user = user
	 
	  	@url = "http://eventbrite.be/login"

		mail(to: @user.email, subject: "Bienvenue sur Eventbrite")

  	end

  	def notif_email(user, participant, event)
		
	  	@user = user
	  	@participant = participant
		mail(to: @user.email, subject: "Nouveau participant")
		@event = event

  	end
end
