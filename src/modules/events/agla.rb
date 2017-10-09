module Bot::DiscordEvents
  module Yazma
    extend Discordrb::EventContainer
    message(from: "ridvantolga") do |event|
      a = rand(0..3)
      if a == 0
        event.respond "ağla"
      elsif a == 1
        event.respond "zırla"
      elsif a == 2
        event.respond "kudur"
      elsif a == 3
        event.respond "çıldır"
      end
    end
  end
end
