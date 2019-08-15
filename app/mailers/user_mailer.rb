class UserMailer < ApplicationMailer

	default from: 'no-reply@monsite.fr'

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Bienvenue chez nous')
	end

	def email_for_admin(attendance)
		@admin = attendance.event.admin
		@participant = attendance.participant
		@event = attendance.event
		mail(to: @admin.email, subject: "Bonjour #{@admin.first_name}, #{@participant.first_name} a participé à votre évènement" )
	end


end
