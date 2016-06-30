require('rspec')
require('makechange.rb')

describe('Fixnum#makechange') do
  it("takes a fixnum representing a float (.nn * 100) and returns the smallest number of coins to make change") do
    expect((67).makechange()).to(eq("quarters: 3 dimes: 1 nickels: 1 pennies: 2"))
  end
end
