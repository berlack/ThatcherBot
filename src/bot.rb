# Gems
require 'discordrb'
require 'ostruct'
require 'yaml'

# The main bot module.
module Bot
  # Load non-Discordrb modules
  Dir['src/modules/*.rb'].each { |mod| load mod }

  # Bot configuration
  CONFIG = OpenStruct.new YAML.load_file 'data/config.yaml'

  # Create the bot.
  # The bot is created as a constant, so that you
  # can access the cache anywhere.
  BOT = Discordrb::Commands::CommandBot.new(client_id: CONFIG.client_id,
                                            token: CONFIG.token,
                                            prefix: CONFIG.prefix)

  # This class method wraps the module lazy-loading process of discordrb command
  # and event modules. Any module name passed to this method will have its child
  # constants iterated over and passed to `Discordrb::Commands::CommandBot#include!`
  # Any module name passed to this method *must*:
  #   - extend Discordrb::EventContainer
  #   - extend Discordrb::Commands::CommandContainer
  # @param klass [Symbol, #to_sym] the name of the module
  # @param path [String] the path underneath `src/modules/` to load files from
  def self.load_modules(klass, path)
    new_module = Module.new
    const_set(klass.to_sym, new_module)
    Dir["src/modules/#{path}/*.rb"].each { |file| load file }
    new_module.constants.each do |mod|
      BOT.include! new_module.const_get(mod)
    end
  end

  load_modules(:DiscordEvents, 'events')
  load_modules(:DiscordCommands, 'commands')

  BOT.message(content: 'merhaba') do |event|
    if event.user.id == 107292203696525312
      event.respond 'Oooo müdür bey hoşgeldiniz!'
      puts "Kodbilen'e selam çakıldı"
    elsif event.user.id == Bot::CONFIG.owner
      a = rand(1..3)
      if a==1
        event.send 'Usta'
      elsif a==2
        event.send 'Yaparım'
      elsif a==3
        event.send 'Tamam'
      end
      puts event.message.author.name + " şşşşşş hooooooo"
    elsif event.user.id == 307546377125101568
        event.respond 'kes len mq'
        puts "Ağlatıldı"
    elsif
      event.send 'Sana da merhaba ' + event.message.author.name
      puts event.message.author.name + "'a selam verildi"
    end
  end

  BOT.message(content: 'Merhaba') do |event|
    if event.user.id == 107292203696525312
      event.respond 'Oooo müdür bey hoşgeldiniz!'
      puts "Kodbilen'e selam çakıldı"
    elsif event.user.id == Bot::CONFIG.owner
        event.respond 'Sana baba diyebilir miyim?'
        puts "Selamlandınız"
    elsif event.user.id == 307546377125101568
        event.respond 'AĞLA AMK KAŞARI KUDUUUUUR'
        puts "Ağlatıldı"
    elsif
      event.send 'Sana da merhaba ' + event.message.author.name
      puts event.message.author.name + "'a selam verildi"
    end
  end

  # Run the bot
  BOT.run
end
