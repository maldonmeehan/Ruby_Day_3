class Fixnum
  define_method(:makechange) do
  cents = self
  coinage = { 25 => "quarters", 10 => "dimes", 5 => "nickels", 1 => "pennies"}
  coin_pos = [1, 5, 10, 25]
  change = []
  i = coin_pos.length
  until i == 0
    val = coin_pos[i -1]
    remainder = ((cents - (cents % val)) / val)
    puts remainder / val
    change.push((cents - (cents % val)) / val)
    cents =  cents - (cents % val)
    puts cents
    i -= 1
  end
  change


  end
end
