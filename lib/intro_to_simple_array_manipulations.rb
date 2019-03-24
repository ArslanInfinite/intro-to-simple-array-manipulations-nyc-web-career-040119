def using_push(countries_in_western_africa, next_country)
  countries_in_western_africa.push next_country
end

def using_unshift(neighborhoods_in_northwest_brooklyn, new_neighborhood)
  neighborhoods_in_northwest_brooklyn.unshift new_neighborhood
end

def using_pop(great_hits_of_the_nineties)
  great_hits_of_the_nineties.pop
end

def pop_with_args(chars_in_game_of_thrones)
  chars_in_game_of_thrones.pop(2)
end

def using_shift(arry)
  arry.shift 
end

describe "#using_shift" do 
  before(:each) do 
    @my_favorite_cities = ["Lagos", "Cape Town", "Nairobi", "San Francisco", "Gaborone", "New York", "Berlin", "London"]
    @im_so_over_this_city = using_shift(@my_favorite_cities)
  end
  it "takes in an argument of an array and uses the shift method to remove the first item and return it" do 
    expect(@im_so_over_this_city).to eq("Lagos")
  end

  it "decreases the length of the array by 1" do 
    expect(@my_favorite_cities.size).to eq(7)
  end
end
