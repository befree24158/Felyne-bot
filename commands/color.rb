module FelyneBot
  module Commands
    module Color
      extend Discordrb::Commands::CommandContainer
      command(:color, description: "Changes avatar randomly", permission_level: 1) do |event|
        $bot.send_message(event.message.channel, "Changing Avatar!")
        $bot.profile.avatar = File.open("/Felyne-bot/pic/#{1 + rand(35)}.jpg")
        puts "Changing Avatar"
      end
    end
  end
end
