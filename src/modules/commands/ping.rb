module Bot::DiscordCommands
  # Responds with "Pong!".
  # This used to check if bot is alive
  module Ping
    extend Discordrb::Commands::CommandContainer
    command :ping do |event|
      m = event.send 'Pong!'
      m.edit "Pong! `#{(Time.now - event.timestamp) * 100} ms`"
    end
  end
end
