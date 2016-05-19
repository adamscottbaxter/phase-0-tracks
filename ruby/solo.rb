# PSEUDOCODE

# class sports_team

# attributes = 
#   team_name(string)
#   play outside(true/false), 
#   player_list(array w default)
#   number of players (player_list.length)
#   wins(int w default)
#   losses(int w default)

# methods:

# promote to captain(player_name)
# input = player_name
# function = remove player from list, replace at front of list
# return = "promoted player_name to captain"

# playoff_bound
# input = win/loss
# function = if win > loss puts "team_name is playoff bound!" : puts "better luck next year team_name..."

class Sports_team

  attr_reader :team_name
  attr_accessor :wins, :losses, :player_list

  def initialize(team_name, wins, losses)
    @team_name = team_name
    @wins = wins
    @losses = losses
    @player_list = ["Suzy", "Johnny", "Elaine", "Jay", "Stephanie", "Gerald"]
    @number_of_players = @player_list.length
  end

  def new_captain(captain_name)
    @player_list = @player_list - [captain_name]
    @player_list.insert(0, captain_name)
    @player_list.each do |i|
      if i == @player_list[0]
        puts "#{i} <-- Captain"
      else
        puts "#{i}"
      end
    end
  end
end

bears = Sports_team.new("Bears", 4, 3)
bears.new_captain("Elaine")
