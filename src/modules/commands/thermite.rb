module Bot::DiscordCommands
  module Thermite
    extend Discordrb::Commands::CommandContainer
    command :thermite do |event|
        channel = event.user.voice_channel
        voiceBot = event.bot.voice_connect(channel)
        voice_bot = event.voice
        voice_bot.play_file 'data/bigfuckinghole.mp3'
        event.send 'A really big fuckin hole coming right up!'
        sleep(1)
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
