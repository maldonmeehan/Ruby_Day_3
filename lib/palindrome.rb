class String
  define_method (:palindrome?) do
    self.downcase.gsub(/[^a-zA-Z0-9]/, "") == self.downcase.gsub(/[^a-zA-Z0-9]/, "").reverse() ? true : false
  end
end
