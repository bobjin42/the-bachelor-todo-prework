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
  data.each{|season, ele|
    ele.each{|info|
    if info["occupation"] == occupation
      return info["name"]
    end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  sum = 0
  data.each{|season, ele|
    ele.each{|info|
    if info["hometown"] == hometown
      sum += 1
    end
    }
  }
  return sum
end

def get_occupation(data, hometown)
  data.each{|season, ele|
    ele.each{|info|
    if info["hometown"] == hometown
    return info["occupation"]
    end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  people = 0
  total_age = 0
  data[season].each{|ele|
    ages = ele["age"]
    total_age += ages.to_i
    people += 1
  }
  return (total_age / people).next
end
