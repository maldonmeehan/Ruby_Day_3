require('rspec')
require('palindrome.rb')

describe('String#palindrome') do
  it("takes a string and returns true if the string reversed is the same as the inputed string") do
    expect(("hannah").palindrome?()).to(eq(true))
  end

  it("takes a string and returns false if the string reversed is not the same as the inputed string") do
    expect(("hello").palindrome?()).to(eq(false))
  end
end
