#Define a method that takes a string and an integer, the integer shifts the letters in the string by the integer value
def caesar_cipher(text, shift)
  #Create an array of the alphabet
  alphabet  = Array('a'..'z')
  #Create a hash of the alphabet with the key being the letter and the value being the letter shifted by the shift value
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  #Repeat the process for the capital letters
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  #Merge the two hashes
  encoder = non_caps.merge(caps)
  
  #Create an empty string to store the encoded text
  encoded_text = ""
  text.chars.each { |c| encoded_text += encoder.fetch(c, c) }
  encoded_text
end

puts caesar_cipher("What a string!", 5)

