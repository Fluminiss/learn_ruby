#write your code here
def translate(words)
    wordArray = words.split(' ')
    translated = []
    wordArray.each do |word|

        if /[aeiou]/.match(word[0])
            word += 'ay'
            translated.push(word)
        else
            regex = /^(qu|[^aeiou]+qu|[^aeiou]+)/
            consonants = word.match(regex).to_s
            newword = word
                .gsub(regex, '')
                .concat(consonants)
                .concat('ay')
            translated.push(newword)
        end
    end
    translated.join(' ')
end
