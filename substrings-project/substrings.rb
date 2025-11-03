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
