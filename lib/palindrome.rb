class String
  define_method (:palindrome?) do
    return true if self.downcase == self.downcase.reverse() 
  end
end
