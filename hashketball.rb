# Write your code below game_hash

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def player_list
    players = game_hash[:home][:players] + game_hash[:away][:players]
end

def num_points_scored(name)
  player_list.each do |player|
    return player[:points] if player[:player_name] == name
  end
end

def shoe_size(name)
  player_list.each do |player|
    return player[:shoe] if player[:player_name] == name
  end
end  

def team_colors(team)
  game_hash.each do |each_team|
  return each_team[1][:colors].to_a if each_team[1][:team_name] == team
  end
end  

def team_names
  game_hash.map do |each_team|
    each_team[1][:team_name]
  end
end  

# Build a method, `team_names`, that operates on the game `Hash` to return an
#   `Array` of the team names.
  
# def team_names
#   team_array = []
#   game_hash.each { |each_team|
#     team_array << each_team[1][:team_name]
#   }
#   team_array
# end  
  
  # * Build a method, `player_numbers`, that takes in an argument of a team name and
  # returns an `Array` of the jersey numbers for that team.

def player_numbers(team)
  game_hash.each { |name, attributes|
      return attributes[:players].map { |key|
        key[:number]
      } if attributes[:team_name] == team
  }
end

# * Build a method, `player_stats`, that takes in an argument of a player's name
#   and returns a hash of that player's stats.

def player_stats(name)
  player_list.map do |player|
    return player if player[:player_name] == name
  end
end  

# * Build a method, `big_shoe_rebounds`, that will return the number of rebounds
#   associated with the player that has the largest shoe size. Break this one down
#   into steps:

#   * First, find the player with the largest shoe size
#   * Then, return that player's number of rebounds
#   * Remember to think about return values here.

def big_shoe_rebounds
  shoe_size = 0
  rebounds = 0
  player_list.each do |player|
    if player[:shoe] > shoe_size
    #binding.pry
      shoe_size = player[:shoe]
      rebounds = player[:rebounds]
    end
  end
  rebounds
end  

# 1. Which player has the most points? Call the method `most_points_scored`.

def most_points_scored
  highest_scoring_player = ""
  most_points = 0
  player_list.each do |player|
    if player[:points] > most_points
      most_points = player[:points]
      highest_scoring_player = player[:player_name]
    end
  end  
  highest_scoring_player
end  

# 2. Which team has the most points? Call the method `winning_team`.

def winning_team
  #take each player's points and add them together for that team
  game_hash.each { |each_team|
    return each_team[1][:players][:points].to_a
  }

end


def winning_team_1
  point_array = []
  game_hash.each { |each_team|
    point_array << each_team[1][:players][:points]
  }
  point_array
end






