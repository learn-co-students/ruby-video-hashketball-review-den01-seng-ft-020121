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

def get_players
  game_hash[:home][:players] + game_hash[:away][:players]
end

def get_team(team)
  if game_hash[:home][:team_name] == team
    return game_hash[:home]
  elsif game_hash[:away][:team_name] == team
    return game_hash[:away]
  end
end
  

def num_points_scored(player)
  players = get_players
  players.each do |player_index|
    if player_index[:player_name] == player 
      return player_index[:points]
    end
   end
end

def shoe_size(player)
  players = get_players
  players.each do |player_index|
    if player_index[:player_name] == player 
      return player_index[:shoe]
    end
   end
end

def team_colors(team)
  get_team(team)[:colors]
end

def team_names
  name_array = []
  name_array.push(game_hash[:home][:team_name])
  name_array.push(game_hash[:away][:team_name])
end

def player_numbers(team)
  players = get_team(team)[:players]
  numbers_array = []
  players.each do |index|
    numbers_array.push(index[:number])
  end
  numbers_array
end

def player_stats(player)
  players = get_players
  players.each do |index|
    if index[:player_name] == player
      return index
    end
  end
end

def big_shoe_rebounds
  players = get_players
  big_shoe = 0 
  big_shoe_rebs = 0 
  players.each do |index|
    if index[:shoe] > big_shoe
      big_shoe = index[:shoe]
      big_shoe_rebs = index[:rebounds]
    end
  end
  big_shoe_rebs
end


def most_points_scored
  players = get_players
  max_points = 0 
  high_scorer = ""
  players.each do |index|
    if index[:points] > max_points
      max_points = index[:points]
      high_scorer = index[:player_name]
    end
  end
  return high_scorer
end

def winning_team
  home_team = game_hash[:home][:team_name]
  home_players = game_hash[:home][:players]
  away_team = game_hash[:away][:team_name]
  away_players = game_hash[:away][:players]
  home_points = 0 
  away_points = 0 
  
  home_players.each do |index|
    home_points += index[:points]
  end
  
  away_players.each do |index|
    away_points += index[:points]
  end
  
  if home_points > away_points
    return home_team
  else
    return away_team
  end
end

def player_with_longest_name 
  players = get_players
  longest_name = ""
  players.each do |index|
    if index[:player_name].length > longest_name.length
      longest_name = index[:player_name]
    end
  end
  return longest_name
end

def player_with_most_steals
  players = get_players
  max_steals = 0
  max_steals_player = ""
  players.each do |index|
    if index[:steals] > max_steals
      max_steals = index[:steals]
      max_steals_player = index[:player_name]
    end
  end
  return max_steals_player
end

def long_name_steals_a_ton
  if player_with_most_steals == player_with_longest_name
    return true 
  else
    return false 
  end
end
  
  



