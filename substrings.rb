require 'pry'

def substrings(searchPhrase, dictionary)
    count = {}
    splitSearch = searchPhrase.downcase.split(" ")
    p splitSearch
    dictionary.each do |item|
        matchingArray = splitSearch.select {|searchItem| searchItem.include?(item)}
        if matchingArray.length > 0
            count[item] = matchingArray.length
        end
    end
    p count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)