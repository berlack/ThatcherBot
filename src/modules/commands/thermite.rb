module Bot::DiscordCommands
  module Thermite
    extend Discordrb::Commands::CommandContainer
    command :thermite do |event|
        channel = event.user.voice_channel
        if channel == nil
          event.send 'Bir sohbet odasına girmelisin.'
          puts event.message.author.name + " couldn't blow a hole in the wall"
        else
          voiceBot = event.bot.voice_connect(channel)
          event.send 'A really big fuckin hole coming right up!'
          event.voice.play_file('data/bigfuckinghole.mp3')
          event.voice.destroy
          m = event.send '```
------------------------------------------
|                                        |
|                                        |
|                /-----\                 |
|                |     |                 |
|                |  o  |                 |
|                |     |                 |
|                \-----/                 |
|                                        |
|                                        |
------------------------------------------
```'
          sleep(0.4)
          m.edit '```
------------------------------------------
|                                        |
|                                        |
|                /-***-\                 |
|                |     |                 |
|                |  o  |                 |
|                |     |                 |
|                \-----/                 |
|                                        |
|                                        |
------------------------------------------
```'
          sleep(0.4)
          m.edit '```
------------------------------------------
|                                        |
|                                        |
|                *******                 |
|                *     *                 |
|                |  o  |                 |
|                |     |                 |
|                \-----/                 |
|                                        |
|                                        |
------------------------------------------
```'
          sleep(0.4)
          m.edit '```
------------------------------------------
|                                        |
|                                        |
|                *******                 |
|                *     *                 |
|                *  o  *                 |
|                *     *                 |
|                \-----/                 |
|                                        |
|                                        |
------------------------------------------
```'
          sleep(0.4)
          m.edit '```
------------------------------------------
|                                        |
|                                        |
|                *******                 |
|                *     *                 |
|                *  o  *                 |
|                *     *                 |
|                **---**                 |
|                                        |
|                                        |
------------------------------------------
```'
          sleep(0.4)
          m.edit '```
------------------------------------------
|                                        |
|                                        |
|                *******                 |
|                *     *                 |
|                *  o  *                 |
|                *     *                 |
|                *******                 |
|                                        |
|                                        |
------------------------------------------
```'
          sleep(0.4)
          m.edit '```
------------------------------------------
|                __    _                 |
|               /  \__/ \_		       |
|              /          \              |
|             |            |             |
|             \           /              |
|             /           |              |
|             |   ___     \              |
|             \__/   \____/              |
|                                        |
------------------------------------------
```'
          puts event.message.author.name + " blowed a hole in the wall"
        end
    end
  end
end
