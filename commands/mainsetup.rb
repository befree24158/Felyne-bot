module FelyneBot
	module Commands
		module MainSetup
			extend Discordrb::Commands::CommandContainer
			command(:mainsetup, permission_level: 1) do |event, hours, minutes|
h = hours.to_i
m = minutes.to_i
now = Time.now
now = now.to_i
timediff = h + m 
timediff = Time.at (timediff)
event << "#{h} hours #{m} minutes left until the end of maintenance"
timediff
		end
	end
end