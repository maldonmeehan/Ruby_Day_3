class String
  define_method (:palindrome?) do
    self.downcase == self.downcase.reverse() ? true : false
  end
end
