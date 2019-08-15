class User < ApplicationRecord
#Jointure
	has_many :attendances
	has_many :events, through: :attendances
#ActionMailer
	after_create :welcome_send
		def welcome_send
			UserMailer.welcome_email(self).deliver_now
		end

end
