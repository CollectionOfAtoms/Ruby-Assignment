class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)

    legalStrats = ["p","r","s"]
    gameHash = Hash[game]
    
    raise WrongNumberOfPlayersError unless game.length == 2
    gameHash.each do |player, play|
    	raise NoSuchStrategyError unless legalStrats.include?(play.downcase)
    end

    if game[0][1] == game[1][1] \
       || (game[0][1] == "p" && game[1][1] == "r") \
       || (game[0][1] == "r" && game[1][1] == "s") \
       || (game[0][1] == "s" && game[1][1] == "p") 
          return game[0]
    else
          return game[1]
    end
end

p rps_game_winner([["Jacapo", "p"],["Luke","r"]])

def rps_tournament_winner(game)
   if game[0][1].class == String  #We can tell if we are on the lowest level of recursion if 
                                #we index into the array twice and the result is a string
      rps_game_winner(game) 
   else 
      #Since we are assuming a fair tournament, whatever is passed must be a 2 element long array
      #  to first index, so we can recursively split the tournament int small "sub tournaments"
      #  until we hit the smallest possible tournament, a game.
      subT1= rps_tournament_winner(game[0])
      subT2= rps_tournament_winner(game[1])
      rps_tournament_winner([subT1,subT2])
   end
end

p rps_tournament_winner([ [["Jorund", "P"], ["Olivia", "S"]] , [["Dick", "R"],["Michael","S"]], [["Jacapo", "P"], ["Ferdinand", "S"]] , [["Buttface", "R"],["Gertrude","S"]] ])


