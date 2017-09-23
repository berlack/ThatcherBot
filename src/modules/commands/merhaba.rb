module Bot::DiscordCommands
  module Merhaba
    extend Discordrb::Commands::CommandContainer
    command :merhaba do |event|
      if event.user.id == Bot::CONFIG.owner
        a = rand(1..3)
        if a==1
          event.send 'Usta'
        elsif a==2
          event.send 'Yaparım'
        elsif a==3
          event.send 'Tamam'
        end
        puts event.message.author.name + " şşşşşş hooooooo"
      else
        event.send 'Sana da merhaba ' + event.message.author.name
        puts event.message.author.name + " kişisine merhaba dedim"
      end
    end
  end
end
