module Bot::DiscordEvents
  module Yazma
    extend Discordrb::EventContainer
    message(in: "#botspam", content:"thatcher", from:"nightstalker") do |event|
      event.respond "Yes my master"
    end
  end
end
