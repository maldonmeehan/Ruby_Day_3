require('rspec')
require('title_case')

describe('String#title_case') do
   it("capitalizes the first letter of a single word") do
     expect(("beowulf").title_case()).to(eq("Beowulf"))
   end

   it("capitalizes the first letter of all words in a multiple word title") do
     expect(("the color purple").title_case()).to(eq("The Color Purple"))
   end

   it("It does not capitalizes designated words (prepositions, conjunctions, etc") do
     expect(("hansel And gretel").title_case()).to(eq("Hansel and Gretel"))
   end

  it("It does capitalizes designated words if they are the first word") do
    expect(("the").title_case()).to(eq("The"))
  end

end
