require 'bundler'
Bundler.require


require_relative 'lib/game.rb'


game = Game.new
nb = 0
while game.end_game != true 
    game.round
    nb += 2.25
   if  nb == 9
    puts "match nul"
       break
   end
end