require "pry"

def game_hash
  {:home => {
    :team_name => "Brooklyn Nets", 
    :colors => ["Black", "White"], 
    :players => {
      "Alan Anderson" => {
        :number => 0, 
        :shoe => 16, 
        :points => 22, 
        :rebounds => 12, 
        :assists => 12,
        :steals => 3, 
        :blocks => 1, 
        :slam_dunks => 1
      },
       "Reggie Evans" => {
         :number => 30,
         :shoe => 14,
         :points => 12,
         :rebounds => 12, 
         :assists => 12,
         :steals => 12, 
         :blocks => 12,
         :slam_dunks => 7
       },
         "Brook Lopez" => {
           :number => 11, 
           :shoe => 17, 
           :points => 17,
           :rebounds => 19,
           :assists => 10,
           :steals => 3,
           :blocks => 1,
           :slam_dunks => 15
         },
         "Mason Plumlee" => {
           :number => 1,
           :shoe => 19,
           :points => 26,
           :rebounds => 11,
           :assists => 6,
           :steals => 3,
           :blocks => 8, 
           :slam_dunks => 5
         },
         "Jason Terry" => {
           :number => 31,
           :shoe => 15,
           :points => 19, 
           :rebounds => 2,
           :assists => 2, 
           :steals => 4, 
           :blocks => 11,
           :slam_dunks => 1
         }
    }
    },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"], 
    :players => {
      "Jeff Adrien" => {
       :number => 4, 
       :shoe => 18, 
       :points => 10,
       :rebounds => 1,
       :assists => 1,
       :steals => 2,
       :blocks => 7,
       :slam_dunks => 2
      },
      "Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
      }
    }
  }
  }
end

def num_points_scored(player_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |name, data|
      if name == player_name
        return data[:points]
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |name, data|
      if name == player_name 
        return data[:shoe]
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |team, team_info|
      if team_info[:team_name] == name
        return team_info[:colors]
      end
    end
  end

def team_names
  teams = []
  game_hash.each do |team, team_info|
    teams << team_info[:team_name]
  end
  return teams
end

def player_numbers(name)
  jersey_numbers = []
  game_hash.each do |team, team_info|
    if team_info[:team_name] == name
      team_info[:players].each do |player_name, value|
      jersey_numbers << value[:number]
  end
end
end
  return jersey_numbers.sort
end

def player_stats(name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_name, value|
      if player_name == name
        return value
      end
    end
  end
end

def big_shoe_rebounds
  big_shoes = 0
  rebound = 0 
  game_hash.each do |team, team_info|
  team_info[:players].each do |player_name, value|
    if value[:shoe] > big_shoes
    big_shoes = value[:shoe]
    rebound = value[:rebounds]
   end
 end
 end
 rebound
 end

def most_points_scored
  most = 0
  mvp = nil
  game_hash.each do |team, team_info|
    team_info[:players]. each do |player_name, value|
      if value[:points] > most
        most = value[:points]
        mvp = player_name
      end
    end
  end
    mvp
end

def winning_team 
  home_points = 0
  away_points = 0
  game_hash[:home][:players].each do |name, values|
       home_points += values[:points]
      end
      game_hash[:away][:players].each do |name, values|
    away_points += values[:points]
end
if home_points > away_points
  return game_hash[:home][:team_name]
else
  return game_hash[:away][:team_name]
end
end

def player_with_longest_name
 mouthfull = 0
 long_name = "player"
 game_hash.each do |team, team_info|
   team_info.each do |name, value|
     if name == :players
       value.each do |player, info|
         if player.length > mouthfull
           mouthfull = player.length
           long_name = player
         end
       end
     end
   end
 end
 long_name
 end
 
 def long_name_steals_a_ton?
   steal_count = 0
   stealer = ""
   game_hash.each do |team, team_info|
     team_info.each do |name, value|
       if name == :players
         value.each do |player, info|
           if info[:steals] > steal_count
             steal_count = info[:steals]
             stealer = player
           end
         end
       end
     end
   end
 end
 if stealer == player_with_longest_name
   return true
 end

 
           


  
  
