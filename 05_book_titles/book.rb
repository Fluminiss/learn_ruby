class Book
# write your code here
    attr_reader :title
    def title=(new_title)
        words = new_title.split(" ")
        words = [words[0].capitalize] +
        words[1..-1].map do |word|
            little_words= ["a", "an", "and", "the", "in", "of"]
            if little_words.include?(word)
                 word
            else
                word.capitalize
            end
        end
        @title = words.join(" ")
    end

end

@book = Book.new
@book.title = "inferno"
@book.title