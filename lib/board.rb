class Board
    attr_accessor :board 
    def initialize
        @board = {":a1"=>" ", ":b1" => " ", ":c1" => " ", ":a2" => " ", ":b2" => " ", ":c2" => " ", ":a3" => " ", ":b3" => " ", ":c3" => " "}
    end
    def put_symbole(location, symbole)

        if  @board[":#{location}"].include?(" ")
            @board[":#{location}"] = symbole
        end
        
    end
   
end