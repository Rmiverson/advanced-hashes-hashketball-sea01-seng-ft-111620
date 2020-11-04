require'pry'
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


def num_points_scored(player_name)
  game_hash.map { |team_key, team_value|
    team_value[:players].map { |player_data|
      player_data.map { |key, value|
        if player_name == value 
          return player_data[:points]
        end
      }
    }
  }
end

def shoe_size(player_name)
  game_hash.map { |team_key, team_value|
    team_value[:players].map { |player_data|
      player_data.map { |key, value|
        if player_name == value 
          return player_data[:shoe]
        end
      }
    }
  }
end

def team_colors(team)
  game_hash.map { |team_key, team_value|
    team_value.map { |data_key, data_value|
      if data_value == team
        return team_value[:colors]
      end
    }
  }
end

def team_names
  ans = Array.new
  game_hash.map { |team_key, team_value|
    team_value.map { |data_key, data_value|
      if data_key == :team_name
        ans.push(data_value)
      end
    }
  }
  return ans
end

def player_numbers(team_name)
  ans = Array.new
  game_hash.map { |team_key, team_value|
    team_value.map { |data_key, data_value|
      if data_value == team_name
        team_value[:players].map { |player_data|
          ans.push(player_data[:number])
        }
      end
    }
  }
  return ans
end

def player_stats(player_name)
  game_hash.map { |team_key, team_value|
    team_value[:players].map { |player_data|
      player_data.map { |player_key, player_value|
        if player_value == player_name
          return player_data
        end
      }
    }
  }
end

def big_shoe_rebounds
  lrgst = [nil, nil, 0]
  game_hash.map { |team_key, team_value|
    team_value[:players].map { |player_data|
      player_data.map { |player_key, player_value|
        if player_data[:shoe] > lrgst[2]
          lrgst[0] = team_key
          lrgst[1] = team_value[:players].index(player_data)
          lrgst[2] = player_data[:shoe]
        end
      }
    }
  }
  return game_hash[lrgst[0]][:players][lrgst[1]][:rebounds]
end

def most_points_scored
  
end

def winning_team
  
end

def player_with_longest_name
  
end

def long_name_steals_a_ton?
  
end

