def substring (string, dictionary) 
    matches = Hash.new(0)
    input = string.downcase.split(" ")
    input.each do |word| 
        dictionary.each do|substring| 
            if word.include?(substring)
                matches[substring] += 1
            end
        end
    end
    p matches
end

dictionary = ["below", "down", "go", "going", "horn", "how", 
    "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

substring("Howdy partner, sit down! How's it going?", dictionary)
substring("below down it lit is split", dictionary) 

