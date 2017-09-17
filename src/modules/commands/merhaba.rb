module Bot::DiscordCommands
  module Merhaba
    extend Discordrb::Commands::CommandContainer
    command :merhaba do |event|
      if event.user.id == Bot::CONFIG.owner
        event.send 'Fookin laser sights'
        puts event.message.author.name + " kişisine sövdüm."
      else
        event.send 'Sana da merhaba ' + event.message.author.name
        puts event.message.author.name + " kişisine merhaba dedim"
      end
    end
  end
end
