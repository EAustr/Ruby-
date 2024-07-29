# Bubble Sort, takes an array of numbers and sorts them in ascending order
def bubble_sort(numbers)
  #Get the length of the array
  n = numbers.length
  #Create a variable to store if the array has been swapped
  loop do
    swapped = false
    #Iterate over the array
    (n - 1).times do |i|
      #If the current number is greater than the next number, swap them
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        swapped = true
      end
    end
    #Break if the array has not been swapped
    break if not swapped
  end
  #Return the sorted array of
  numbers
  
end

puts bubble_sort([4,3,78,2,0,2])
