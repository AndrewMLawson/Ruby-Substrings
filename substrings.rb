def substrings(searchWord, wordArray)
    theHash = {}
    p wordArray
    wordArray.each do |item|
        if searchWord.include?(item)
            theHash[item] = searchWord.count(item)
            p "new key created!"
        end
    end
    p theHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)