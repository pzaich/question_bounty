module ApplicationHelper
	def time_to_deadline(expiration)
		time_left = expiration - Time.now
		if time_left < 60
			time_left.to_i.to_s + "seconds"
		elsif time_left < 3600
			(time_left / 60).to_i.to_s + "minutes"
		else time_left < 86400
			(time_left / 3600).to_i.to_s + "hours"
		end
	end
end
