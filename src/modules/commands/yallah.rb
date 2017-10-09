module Bot::DiscordCommands
  module Yallah
    extend Discordrb::Commands::CommandContainer
    command :yallah do |event|
      server = event.user.server.id
      Bot::BOT.voice_destroy(server)
      puts "Odadan atıldı(yallah)"
    end
  end
end
