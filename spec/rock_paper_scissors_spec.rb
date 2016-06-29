require('rspec')
require('rock_paper_scissors.rb')

describe('String#rock_paper_scissors') do
  it("takes a string and returns false if rock is the object and paper is the argument") do
    expect(("rock").rock_paper_scissors?("paper")).to(eq(false))
  end

  it("takes a string and returns false if paper is the object and scissors is the argument") do
    expect(("paper").rock_paper_scissors?("scissors")).to(eq(false))
  end

  it("takes a string and returns false if scissors is the object and rock is the argument") do
    expect(("scissors").rock_paper_scissors?("rock")).to(eq(false))
  end

  it("takes a string and returns true if rock is the object and scissors is the argument") do
    expect(("rock").rock_paper_scissors?("scissors")).to(eq(true))
  end

  it("takes a string and returns true if scissors is the object and paper is the argument") do
    expect(("scissors").rock_paper_scissors?("paper")).to(eq(true))
  end

  it("takes a string and returns true if paper is the object and rock is the argument") do
    expect(("paper").rock_paper_scissors?("rock")).to(eq(true))
  end

end
