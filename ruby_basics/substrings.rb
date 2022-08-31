dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, arr)
    arr.map do |el| 
        el if str.downcase.include? el
    end.compact

end

p substrings("Howdy partner, sit down! How's it going?", dictionary)