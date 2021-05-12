def upcase(string)
    return string if string.length <= 1 #=> base case saying if the string is length = 1 then upcase the string
    string[0].upcase + upcase(string[1..-1]) #=> recursive case calling upcasing the first letter, and calling #upcase(string) on the rest of the string
end

def reverse(str) #=> base case if the str has a length of 1 ("a") then return str.reverse
    return str if str.length <= 1 #=> checking base case
    reverse(str[1..-1]) + str[0] #=> recursive case 
end

def quick_sort(arr) #=> quickest sorting algorithm 
    return arr if arr.length <= 1 #=> base case when the array length = 1 because an array of length one is sorted "[1]"
    pivot = [arr.first] #=> setting the pivot or "absolute" variable for the left and right to sorted by
    left = arr.select { |el| el < arr.first } #=> selecting the numbers that belong in the left array (e.g. numbers less than pivot)
    right = arr.select { |el| el > arr.first } #=> selecting the numbers that belong in the right array (e.g. numbers greater than pivot )
    quick_sort(left) + pivot + quick_sort(right) #=> recursive return sorting the left and right arrays and adding them with the pivot
end

# sample array uncomment to use
# arr = [1,7,4,8,9,6,5,2,3]

# Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).
def sum_to(n)
    return 1 if n == 1
    return nil if n <= 0
    n + sum_to(n-1)
end

# Funtion for adding up the elements of an array 
def add_numbers(nums_array)
    return nums_array.first if nums_array.length == 1 #=> base case if the array is length 1 then just return the first element
    return nil if nums_array.length < 1 #=> return nil if the array length is less than 1
    
    nums_array.pop + add_numbers(nums_array) #=> inductive/recursive case taking the sum of the array and #pop the the last ele each time
end

## Gamma Function
def gamma_fnc(n) 
    return 1 if n == 1 #=> base case when n = 1 return 1
    return nil if n <= 0 #=> base case when n <= 0 aka less then 1 return nil
    
    (n-1) * gamma_fnc(n-1)
end
#=> induction/recursive case based off factorial taking (n-1) * gamma_fnc(n-1)
#=> if n = 4 it would evaluate to (4-1) * gamma_fnc(4-1) (i.e. 6)
#=> gamma_func(4-1) = gamma_func(3)
#=> gamma_func(3) = (3-1) * gamma_fnc(3-1) (i.e. 2)
#=> gamma_fnc(3-1) = gamma_fnc(2)
#=> gamma_fnc(2) = (2-1) * gamma_fnc(2-1) (i.e. 1)
#=> gamma_fnc(2-1) = gamma_fnc(1)
#=> gamma_fnc(1) = return 1 if n == 1 (i.e. 1)

# Ice Cream Shop - takes in an array of ice cream flavors available at the ice cream shop, 
# as well as the user's favorite ice cream flavor. Recursively find out whether or not the 
# shop offers their favorite flavor.
def ice_cream_shop(flavors, favorite)
    return false if flavors.length == 0 #=> returns false if flavors arrray is empty
    last_flavor = flavors.pop #=> #pop the last flavor from the array 
    return true if last_flavor == favorite #=> checking if the last flavor equals the favorite flavor is so return true
    # above is base case

    ice_cream_shop(flavors, favorite) #=> recusive case check the flavors array again with one less flavor now that since #pop was called
end

# Reverse - Write a function reverse(string) that takes in a string and returns it reversed.
def reverse(str)
    return str if str.length <= 1
    str[-1] + reverse(str[0..-2])
end
