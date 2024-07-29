#Create a word dictionary, you can put anything here
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Define a method that takes a string and the dictionary
def substrings(string, dictionary)
  #Convert the string to lowercase
  string.downcase!
  #Split the string into an array of words
  words = string.split(" ")
  #Create a hash to store the result
  result = Hash.new(0)
  #Iterate over the dictionary
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