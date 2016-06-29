class String
  define_method(:find_and_replace) do |from, to|
    self.gsub!(/#{from}/i, to)
  end
end
