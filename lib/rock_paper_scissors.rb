class String
  define_method(:rock_paper_scissors?) do |arg|
    rps_arr = {"rock" =>1, "paper" =>2, "scissors" =>3}
    player1 = rps_arr.fetch(self)
    player2 = rps_arr.fetch(arg)
    return ((player1 == 1 && player2 == 2) || (player1 == 2 && player2 == 3)|| (player1 == 3 && player2 == 1)) ? false : true
  end

end
