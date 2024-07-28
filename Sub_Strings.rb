
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string.downcase!
  words = string.split(" ")
  result = Hash.new(0)
  dictionary.each do |word|
    words.each do |w|
      if w.include?(word)
        result[word] += 1
      end
    end
  end
  result
end 

puts substrings("Howdy partner, sit down! How's it going?", dictionary)