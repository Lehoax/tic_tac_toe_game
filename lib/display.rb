require_relative 'board.rb'

class Display
    attr_accessor :board
    def initialize(board)
        @board = board
    end
    def start_game
        puts "████████╗██╗░█████╗░  ████████╗░█████╗░░█████╗░  ████████╗░█████╗░███████╗".blue
        puts "╚══██╔══╝██║██╔══██╗  ╚══██╔══╝██╔══██╗██╔══██╗  ╚══██╔══╝██╔══██╗██╔════╝".blue
        puts "░░░██║░░░██║██║░░╚═╝  ░░░██║░░░███████║██║░░╚═╝  ░░░██║░░░██║░░██║█████╗░░".blue
        puts "░░░██║░░░██║██║░░██╗  ░░░██║░░░██╔══██║██║░░██╗  ░░░██║░░░██║░░██║██╔══╝░░".blue
        puts "░░░██║░░░██║╚█████╔╝  ░░░██║░░░██║░░██║╚█████╔╝  ░░░██║░░░╚█████╔╝███████╗".blue
        puts "░░░╚═╝░░░╚═╝░╚════╝░  ░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░  ░░░╚═╝░░░░╚════╝░╚══════╝".blue
        puts
        puts "█▀█ █░█ █▄▄ █▄█".center(70).red 
        puts "█▀▄ █▄█ █▄█ ░█░".center(70).red
        puts
        puts
        puts "/_\\Pour jouer écrit les coordonnées dans ce format -> a1".red
        puts
    end
    def ask_name_player(nb)
        print "Joueur\s"
        print "#{nb}\s".red
        print "comment tu t'appelle ?\n"
        print ">"
    end
  
    def board
        puts " -------------".center(70)
        puts "c | #{@board.board[":c1"]} | #{@board.board[":c2"]} | #{@board.board[":c3"]} |".center(70)
        puts " -------------".center(70)
        puts "b | #{@board.board[":b1"]} | #{@board.board[":b2"]} | #{@board.board[":b3"]} |".center(70)
        puts " -------------".center(70)
        puts "a | #{@board.board[":a1"]} | #{@board.board[":a2"]} | #{@board.board[":a3"]} |".center(70)
        puts " ---------------".center(70)
        puts "    1   2   3   ".center(70)

    end
    def victory(name_player)
        puts "____    ____  __    ______ .___________.  ______    __  .______       _______ ".yellow
        puts "\\   \\  /   / |  |  /      ||           | /  __  \\  |  | |   _  \\     |   ____|".yellow
        puts " \\   \\/   /  |  | |  ,----'`---|  |----`|  |  |  | |  | |  |_)  |    |  |__   ".yellow
        puts "  \\      /   |  | |  |         |  |     |  |  |  | |  | |      /     |   __|  ".yellow
        puts "   \\    /    |  | |  `----.    |  |     |  `--'  | |  | |  |\\  \\----.|  |____ ".yellow
        puts "    \\__/     |__|  \\______|    |__|      \\______/  |__| | _| `._____||_______|".yellow
        puts
        puts "Bien jouer #{name_player}".center(70).red 
    end
    def your_turn(name_player)
        print"#{name_player} ".green
        print"a toi de jouer :\n"
        print"> ".red
    end
end
