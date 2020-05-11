class Participant < ApplicationRecord
	after_create :notif_organisateur

	belongs_to :event
	belongs_to :user

	private

	def welcome_send
		NewParticipantMailer.notif_email(self.event.user, self.user, self.event).deliver_now
	end
end
