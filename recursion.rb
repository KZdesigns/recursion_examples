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