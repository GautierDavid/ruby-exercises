dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, arr)

  arr.map { |word| str.downcase.scan(word.downcase) } # scan return a 2d array of the el that match with string 
        .filter {|array| !array.empty?} # return an array without the empty array
        .to_h { |array| [array[0], array.length] } # transform the array in an hash, taking the first value of the subArray as key and length of the subarray as value
end

p substrings("below", dictionary)