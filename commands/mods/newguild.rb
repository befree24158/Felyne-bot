module FelyneBot
	module Commands
		module NewGuild
			extend Discordrb::Commands::CommandContainer
			command(
					:newguild,
					description: "Adds a user guild to the guilds database.",
					usage: "newguild <GuildName>",
					min_args: 1,
					max_args: 1,
					permission_level: 800
			) do |event, search|
				role = event.server.roles.find { |role| role.name == search }
				if role == nil
					event << "The role **#{search}** does not exist on the server. Please create it before running the command again."
				else
					tempGuild = Guild.new(role, search, $guilds, event.message.channel, $bot)
					saveObj($guilds,"userbase/guilds")
				end
				puts "#{event.timestamp}: #{event.user.name}: CMD: newguild <#{search}>"
				nil
			end
		end
	end
end