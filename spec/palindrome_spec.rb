require('rspec')
require('palindrome.rb')

describe('String#palindrome') do
  it("takes a string and returns true if the string reversed is the same as the inputed string") do
    expect(("hannah").palindrome?()).to(eq(true))
  end
end
