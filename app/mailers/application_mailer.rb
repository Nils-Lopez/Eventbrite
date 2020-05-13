class ApplicationMailer < ActionMailer::Base
  	default from: 'nils.testdev@gmail.com'
  	layout 'mailer'

  	def welcome_email(user)
		

	  	@user = user
	 
	  	@url = "http://eventbrite.be/login"

		mail(to: @user.email, subject: "Bienvenue sur Eventbrite")

  	end

  	def notif_email(user, participant, event)		
	  	@user = user
	  	@participant = participant
	  	@event = event
			mail(to: @user.email, subject: "Nouveau participant")
  	end
end
