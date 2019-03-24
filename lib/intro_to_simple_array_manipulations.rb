def using_push(countries_in_western_africa, next_country)
  countries_in_western_africa.push next_country
end

def using_unshift(neighborhoods_in_northwest_brooklyn, new_neighborhood)
  neighborhoods_in_northwest_brooklyn.unshift new_neighborhood
end

def using_pop(great_hits_of_the_nineties, deleted_string)
  great_hits_of_the_nineties.pop 
end

describe "#using_pop" do
  before(:each) do 
    @great_hits_of_the_nineties = ["Baby One More Time", "Smells Like Teen Spirit", "Missing", "Walking On The Sun", "Hard Knock Life", "Losing My Religion"]
    @deleted_string = using_pop(@great_hits_of_the_nineties)
  end
  it "takes in argument of an array and uses the pop method to remove the last element from the array and return that element" do 
    expect(@deleted_string).to eq("Losing My Religion")
  end

  it "decreases the length of the array by 1" do 
    expect(@great_hits_of_the_nineties.size).to eq(5)
  end
end