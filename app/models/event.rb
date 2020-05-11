class Event < ApplicationRecord
	validates :start_date, presence: true
	validates :title, presence: true, length: { minimum: 5, maximum: 140 }
	validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
	validates :price, inclusion: {in: 1..1000}
	validates :location, presence: true
	validate :duration_5
	validate :start_date_after_now
	belongs_to :user
	
	private

 	def start_date_after_now
    	return if start_date.blank?

	    if Time.now > start_date
	      errors.add(:start_date, "must be in the future")
	    end
 	end

 	def duration_5
 		if (:duration%5) != 0
 			errors.add(:duration, "must be a multiple of 5")
 		end
 	end
end
