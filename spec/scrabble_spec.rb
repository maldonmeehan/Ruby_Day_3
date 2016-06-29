require('rspec')
require('scrabble.rb')

describe('String#scrabble') do
  it("takes a lower sting and converts it to upper case") do
    expect(("a").scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a letter") do
    expect("cat".scrabble()).to(eq(5))
  end

  it("returns a scrabble score for a letter") do
    expect("d".scrabble()).to(eq(2))
  end

  it("returns a scrabble score for a letter") do
    expect("b".scrabble()).to(eq(3))
  end

  it("returns a scrabble score for a letter") do
    expect("k".scrabble()).to(eq(5))
  end

  it("returns a scrabble score for a letter") do
    expect("j".scrabble()).to(eq(8))
  end

  it("returns a scrabble score for a letter") do
    expect("q".scrabble()).to(eq(10))
  end
end
