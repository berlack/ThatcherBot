module Bot::DiscordCommands
  module Gelgel
    extend Discordrb::Commands::CommandContainer
    command :gelgel do |event|
      voiceChan = event.author.voice_channel
      voiceBot = event.bot.voice_connect voiceChan
      puts "Odaya girildi(gelgel)"
    end
  end
end
