module Bot::DiscordEvents
  module Yazma
    extend Discordrb::EventContainer
    message(in: "#botspam", content:"dab" ) do |event|
      voiceChan = event.author.voice_channel
      puts "Channel alındı(DAB)"
      voiceBot = event.bot.voice_connect voiceChan
      puts "Odaya girildi(DAB)"
      event.send "DAB ON THEM HATERS"
      event.voice.play_file('data/dab.mp3')
      server = event.user.server.id
      sleep(0.5)
      Bot::BOT.voice_destroy(server)
      puts "Odadan atıldı(DAB)"
    end
  end
end
