module FelyneBot
	module Commands
		module Ping
			extend Discordrb::Commands::CommandContainer
			command(
					:ping,
					description: "Responds with response time",
					useage: "ping"
			) do |event|
				event.respond  ":ping_pong:Pong! : #{((Time.now - event.timestamp) * 1000).to_i.abs}ms:ping_pong:"
				puts "#{event.timestamp}: #{event.user.name}: CMD: ping"
				nil
			end
		end
	end
end
