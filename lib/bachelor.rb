require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    binding.pry
    if season_number == season.to_sym
      contestants.each do |contestant| 
        contestant.each do |attribute, details|
          if contestant[attribute] == "Winner"
            return contestant[:"name"].partition(" ").first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
