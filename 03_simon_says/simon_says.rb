#write your code here
def echo(word)
    word
end
def shout(word)
    word.upcase
end
def repeat(word, times = 2)
    words = ""
    times.times do |i|
        if i == times-1
            words += word
        else
        words += word + ' '
        end
    end
    words
end
def start_of_word(word, amount)
    word[0, amount]
end
def first_word(sen)
    return sen.split(' ')[0]
end
def titleize(sen)
    newTitle=[]
    senArray =sen.split()
    senArray.each do |word|
        if newTitle == []
            newTitle.push(word.capitalize)
        elsif word == "over" or word == "and" or word == "the"
            newTitle.push(word)
        else
            word = word.capitalize
            newTitle.push(word)
        end
    end
    newTitle.join(' ')
end

puts titleize("the bridge over the river kwai")

    
    
