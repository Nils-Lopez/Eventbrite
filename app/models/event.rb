class Event < ApplicationRecord
	validates :start_date, presence: true
	validates :title, presence: true, length: { minimum: 5, maximum: 140 }
	validates :desc, presence: true, length: { minimum: 20, maximum: 1000 }
	validates :location, presence: true
	validates :price, presence: true
	belongs_to :user
end
