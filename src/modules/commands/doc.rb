module Bot::DiscordCommands
  module Doc
    extend Discordrb::Commands::CommandContainer
    command :doc do |event|
        event.send '***' + event.message.author.name + '***' + ' *overhealed themselves at the beggining of the round*'
        puts event.message.author.name + " overhealed themselves"
    end
  end
end
