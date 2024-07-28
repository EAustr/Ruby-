def caesar_cipher(text, shift)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encoder = non_caps.merge(caps)
  
  encoded_text = ""
  text.chars.each { |c| encoded_text += encoder.fetch(c, c) }
  encoded_text
end

puts caesar_cipher("What a string!", 5)

