def using_push(countries_in_western_africa, next_country)
  countries_in_western_africa.push next_country
end

def using_unshift(neighborhoods_in_northwest_brooklyn, new_neighborhood)
  neighborhoods_in_northwest_brooklyn.unshift new_neighborhood
end

def using_pop(great_hits_of_the_nineties)
  great_hits_of_the_nineties.pop
end

def pop_with_args(chars_in_game_of_thrones, chars_arya_killed)
  chars_arya_killed.pop(2) 
end

describe "#pop_with_args" do
  before(:each) do 
    @chars_in_game_of_thrones = ["Danny T.", "Tyrion Lannister", "Stable Boy", "Sandor Clegane"]
    @chars_arya_killed = pop_with_args(@chars_in_game_of_thrones)
  end 
  it "takes in an argument of an array and uses the pop method with an argument of 2 to remove the last two array items and return them" do 
    expect(@chars_arya_killed).to eq(["Stable Boy", "Sandor Clegane"])
  end 

  it "decreases the length of the array by 2" do
    expect(@chars_in_game_of_thrones.size).to eq(2) 
  end
end