# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  decimal_number = 0
  i = 0
  index_counter = (binary_array.length - 1)

  while i < binary_array.length
    digit = binary_array[index_counter]
    if digit == 1
      decimal_number += (2 ** i)
    end
    i += 1
    index_counter -= 1
  end

  # THIS IS HOW I ORIGINALLY SOLVED THE PROBLEM
  # BUT I REFACTORED TO THE ABOVE BECAUSE I
  # WASN'T SURE IF .reverse WAS ALLOWED

  # def binary_to_decimal(binary_array)
  #   rev_binary_arr = binary_array.reverse
  #   decimal_number = 0
  #   i = 0

  #   while i <= binary_array.length
  #     digit = rev_binary_arr[i]
  #     if digit == 1
  #       decimal_number += (2 ** i)
  #     end
  #     i += 1
  #   end
  return decimal_number
end
