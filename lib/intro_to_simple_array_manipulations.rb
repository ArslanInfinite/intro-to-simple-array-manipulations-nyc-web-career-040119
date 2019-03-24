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
  my_favorite_things << more_favs.each {|i| my_favorite_things << i }
end

def using_insert(list_of_esoteric_programming_languages, another_esoteric_language)
  list_of_esoteric_programming_languages.insert(another_esoteric_language)
end

def using_uniq(captain_planet_and_the_planeteers)
  captain_planet_and_the_planeteers.uniq
end

describe "#using_uniq" do
  it "takes in an argument of an array and uses the uniq method to remove any duplicate items" do
    captain_planet_and_the_planeteers = ["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler", "Gaia"]
    new_array = using_uniq(captain_planet_and_the_planeteers)
    expect(new_array).to eq(["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler"])
  end
end
