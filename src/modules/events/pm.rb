module Bot::DiscordEvents
  module Pm
    extend Discordrb::EventContainer
    Bot::BOT.mention do |event|
      event.user.pm 'Buyur kardeş ne vardı?'
    end
  end
end
