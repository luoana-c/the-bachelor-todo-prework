require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant| 
        contestant.each do |attribute, details|
          if contestant[attribute] == "Winner"
            return contestant["name"].partition(" ").first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |contestant| 
      contestant.each do |attribute, details|
        if contestant[attribute] == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  number_of_contestants = 0
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, details|
        if contestant[attribute] == hometown
          return contestant[attribute]
          #number_of_contestants += 1 
        end
      end
    end
  end
  #return number_of_contestants
end

def get_average_age_for_season(data, season)
  # code here
end
