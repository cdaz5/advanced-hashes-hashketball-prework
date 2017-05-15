# Write your code here!
require 'pry'

def game_hash
  game_hash = {
    :home => {
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
          :rebounds => 12,
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
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
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
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
  # binding.pry
end


def num_points_scored(player_name)
  number_of_points = nil

  game_hash.each do |location, team_data|
    if team_data.class == Hash
    team_data.each do |attribute, data|
      if data.class == Hash
      data.each do |player, stats|
        if player == player_name
          number_of_points = stats.fetch(:points)
        end
      end
    end
  end
end
end
number_of_points
end

def shoe_size(player_name)
  shoe_size = nil

  game_hash.each do |location, team_data|
    if team_data.class == Hash
      team_data.each do |attribute, data|
        if data.class == Hash
          data.each do |player, stats|
            if player == player_name
              shoe_size = stats.fetch(:shoe)
            end
          end
        end
      end
    end
  end
    shoe_size
  end

  def team_colors(team_name)
    colors = nil

    game_hash.each do |location, team_data|
      if team_data.value?(team_name)
        colors = team_data.fetch(:colors)
      end
    end
    colors
  end

def team_names
 names = []
 names << game_hash[:home][:team_name]
 names << game_hash[:away][:team_name]
 names
end

#def teams
#  game_hash.values
#end

#def find_the_team(team_name)
#  teams.find {|team| team.fetch(:team_name) == team_name}
#end

def player_numbers(team_name)
    home_numbers = []
    home_team_name = game_hash[:home][:team_name]
    game_hash[:home][:players].each do |player|
      player_number = player[1][:number]
      home_numbers << player_number
      end
      away_numbers = []
      away_team_name = game_hash[:away][:team_name]
      game_hash[:away][:players].each do |player|
        player_number = player[1][:number]
        away_numbers << player_number
      end
      if team_name == home_team_name
        return home_numbers
      else
        return away_numbers
    end

  end

def player_stats(player_name)
  game_hash[:away][:players].each do |player, stats|
    if player_name == player
      return stats
    else game_hash[:home][:players].each do |player, stats|
      if player_name == player
        return stats
      end
    end
  end
end
end

def big_shoe_rebounds
  shoe_sizes = []
  game_hash[:home][:players].each do |player|
    shoe_size = player[1][:shoe]
    shoe_sizes << shoe_size
  end
  game_hash[:away][:players].each do |player|
    shoe_size = player[1][:shoe]
    shoe_sizes << shoe_size
  end
  #binding.pry
  largest_size = shoe_sizes.sort.last

  game_hash[:home][:players].each do |player, stats|
    #binding.pry
    stats.each do |k, v|
      #binding.pry
      if k == :shoe && v == largest_size
        binding.pry
        if k == :rebounds
          binding.pry
          return v
        end

end
end
    #binding.pry
  end
end





  #   end
  #   away_numbers = []
  #   away_team_name = game_hash[:away][:team_name]
  #   game_hash[:away][:players].each do |player|
  #     player_number = player[1][:number]
  #     away_numbers << player_number
  # end


#     binding.pry
#   end
# end

player_numbers("Brooklyn Nets")
