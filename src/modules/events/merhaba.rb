module Bot::DiscordEvents
  module Merhaba
    extend Discordrb::EventContainer
    message(content: "merhaba") do |event|
      if event.user.id == 107292203696525312
        event.respond 'Oooo müdür bey hoşgeldiniz!'
        puts "Kodbilen'e selam çakıldı"
      elsif event.user.id == Bot::CONFIG.owner
        event.send "Sana baba diyebilir miyim?"
        puts "Selamlandınız"
      elsif event.user.id == 307546377125101568
          event.respond 'kes len mq'
          puts "Ağlatıldı"
      elsif
        event.send 'Sana da merhaba ' + event.user.mention
        puts event.message.author.name + "'a selam verildi"
      end
    end
  end
end
