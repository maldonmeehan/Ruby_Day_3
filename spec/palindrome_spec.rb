require('rspec')
require('palindrome.rb')

describe('String#palindrome') do
  it("takes a string and returns true if the string reversed is the same as the inputed string") do
    expect(("hannah").palindrome?()).to(eq(true))
  end

  it("takes a string and returns false if the string reversed is not the same as the inputed string") do
    expect(("hello").palindrome?()).to(eq(false))
  end

  it("takes a string and returns false if the string reversed is not the same as the inputed string") do
    expect(("hello").palindrome?()).to(eq(false))
  end

  it("takes a sentence and returns true if the string (without punctuation) reversed is the same as the inputed string") do
    expect(("A man, a plan, a canal: Panama.").palindrome?()).to(eq(true))
  end
end
