class Attendance < ApplicationRecord
	belongs_to :event
	belongs_to :participant, class_name: "User"

	
	after_create :sent_email_to_admin
		def sent_email_to_admin
			UserMailer.email_for_admin(self).deliver_now
		end

end
