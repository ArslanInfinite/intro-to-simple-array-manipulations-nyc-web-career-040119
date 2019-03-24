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

def using_shift(my_favorite_cities)
  my_favorite_cities.shift
end

def shift_with_args(ice_cream_brands)
  ice_cream_brands.shift(2)
end

def using_concat(my_favorite_things, more_favs)
  my_favorite_things + more_favs
end

describe "#using_concat" do
  before(:each) do
    @my_favorite_things = ["raindrops on roses", "whiskers on kittens"]
    more_favs = ["mario kart", "flatiron school"]
    @all_my_favs = using_concat(@my_favorite_things, more_favs)
  end
   it "takes in two arguments of two different arrays and uses the concat method to add the contents of the second array to the first" do
    expect(@all_my_favs).to eq(["raindrops on roses", "whiskers on kittens", "mario kart", "flatiron school"])
   end

   it "increases the length of the first array" do
    expect(@my_favorite_things.length).to be > 2
   end
end
