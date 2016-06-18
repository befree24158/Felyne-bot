module FelyneBot
	module Commands
		module Raid
			extend Discordrb::Commands::CommandContainer
			command(:raid) do |event|
				now = Time.now
				now = now.to_i
				name1=IO.readlines("bot/raid1")[0]
				time1=IO.readlines("bot/raid1")[1].to_i
				timediff1 = time1 - now - 3600
				if time1 < now
					event << "'#{name1}' raid is either happening now, or you missed it!"
				else
					event << "#{Time.at(timediff1).strftime('%H hours %M minutes %S seconds')} left until the '#{name1}' raid"
				end
			end
		end
	end
end