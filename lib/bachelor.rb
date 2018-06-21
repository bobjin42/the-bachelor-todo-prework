def get_first_name_of_season_winner(data, season)
  # code here
  
  data[season].each{|ele| 
    if ele["status"] == "Winner"
      name = ele["name"]
      first_name = name.split(" ")[0]
      return first_name
    end
  }
end

def get_contestant_name(data, occupation)
  # code here
  data[season].each{|ele| 
    if ele["occupation"] == occupation
      return ele["name"]
    end
  }
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
