require 'bundler'
Bundler.require


require_relative 'lib/game.rb'


game = Game.new
nb = 0
while game.end_game != true 
    game.round
    nb += 2.25
   if  nb > 9
    puts "                       _                    _ "
    puts "             _        | |                  | |"
    puts " ____   ____| |_  ____| | _     ____  _   _| |"
    puts "|    \\ / _  |  _)/ ___) || \\   |  _ \\| | | | |"
    puts "| | | ( ( | | |_( (___| | | |  | | | | |_| | |"
    puts "|_|_|_|\\_||_|\\___)____)_| |_|  |_| |_|\\____|_|"
       break
   end
end