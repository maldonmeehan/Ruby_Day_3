class String
  define_method(:title_case) do
    preposition_array = ["A", "An", "And", "At", "But", "By", "For", "In", "Nor", "Of", "On", "Or", "So", "The", "To", "Up", "Yet"]
    split_sentence = self.split()
    split_sentence.each() do |word|
      word.downcase!()
      word.capitalize!()
      preposition_array.each() do |no|
        if word.!=(split_sentence[0]) && word.==(no)
          word.downcase!()
        end
      end
    end
    split_sentence.join(" ")
  end
end
