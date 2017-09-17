module Bot::DiscordCommands
  module Thermite
    extend Discordrb::Commands::CommandContainer
    command :thermite do |event|
        event.send 'A big fuckin hole coming right up!'
        puts event.message.author.name + " blowed a hole in the wall"
    end
  end
end
