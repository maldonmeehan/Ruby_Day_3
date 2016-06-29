require('rspec')
require('find_and_replace.rb')

describe('String#find_and_replace') do
  it("takes a string and substitutes a chosen word with a second chosen word") do
    expect(("My dog is a cat.").find_and_replace("dog", "cat")).to(eq("My cat is a cat."))
  end
end
