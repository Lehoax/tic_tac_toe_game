require_relative 'player.rb'
require_relative 'board.rb'
require_relative 'display.rb'

class Game
    attr_accessor :board, :end_game
    def initialize
        system "clear"
        @end_game = false
        @board = Board.new
        @display = Display.new(@board)
        @display.start_game()
        @display.ask_name_player(1)
        user_name = gets.chomp
        @player1 = Player.new(user_name, "x")
        @display.ask_name_player(2)
        user_name = gets.chomp
        @player2 = Player.new(user_name, "o")
    end
    
    def is_finish?(name_player)
        if @board.board[":a1"].to_s.include?(" ") == false && @board.board[":a1"].to_s == @board.board[":a2"].to_s && @board.board[":a1"].to_s == @board.board[":a3"].to_s 
            @display.victory(name_player)
            return @end_game = true
        elsif  @board.board[":b1"].to_s.include?(" ") == false&& @board.board[":b1"].to_s == @board.board[":b2"].to_s && @board.board[":b1"].to_s == @board.board[":b3"].to_s
            @display.victory(name_player)
            return @end_game = true
        elsif @board.board[":c1"].to_s.include?(" ") == false  && @board.board[":c1"].to_s == @board.board[":c2"].to_s && @board.board[":c1"].to_s == @board.board[":c3"].to_s
            @display.victory(name_player)
             return @end_game = true
        elsif @board.board[":a1"].to_s.include?(" ") == false  && @board.board[":a1"].to_s == @board.board[":b1"].to_s && @board.board[":a1"].to_s == @board.board[":c1"].to_s
            @display.victory(name_player)
            return @end_game = true
        elsif @board.board[":a2"].to_s.include?(" ") == false  && @board.board[":a2"].to_s == @board.board[":b2"].to_s && @board.board[":a2"].to_s == @board.board[":c2"].to_s
            @display.victory(name_player)
            return @end_game = true
        elsif  @board.board[":a3"].to_s.include?(" ") == false && @board.board[":a3"].to_s == @board.board[":b3"].to_s && @board.board[":a3"].to_s == @board.board[":c3"].to_s
            @display.victory(name_player)
            return @end_game = true
        elsif  @board.board[":a3"].to_s.include?(" ") == false && @board.board[":a3"].to_s == @board.board[":b2"].to_s && @board.board[":a3"].to_s == @board.board[":c1"].to_s
            @display.victory(name_player)
            return @end_game = true
        elsif  @board.board[":a1"].to_s.include?(" ") == false && @board.board[":a1"].to_s == @board.board[":b2"].to_s && @board.board[":a1"].to_s == @board.board[":c3"].to_s
            @display.victory(name_player)
            return @end_game = true
        else
            return @end_game = false
        end
    end
    def round
        system "clear"
        @display.board
        @display.your_turn(@player1.name)
        location = gets.chomp
        @board.put_symbole(location, @player1.symbole)
        system "clear"
        @end_game = is_finish?(@player1.name)
        if @end_game == true
            @display.board
        else
            @display.board
            @display.your_turn(@player2.name)
            location = gets.chomp
            @board.put_symbole(location, @player2.symbole)
            @end_game = is_finish?(@player2.name)
            @display.board
           
        end
    end
   
end