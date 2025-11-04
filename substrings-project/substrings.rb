# Takes a string and array of strings (dictionary) as parameters and returns a hash containing each dictionary
# word found in the string and the integer of how many times it was found
def substrings(text, dict)
    solution = Hash.new(0)
    words = text.downcase.split(" ")
    dict.each do |word|
        words.each do |w|
            if w.include?(word)
                solution[word] += 1
            end
        end
    end
    return solution
end
