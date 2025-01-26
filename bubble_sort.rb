# ruby bubble_sort.rb

def bubble_sort(array)

  loop do
    not_sorted = false # initialize flag variable to false

    array.each_with_index do |element, index| 
      # check if each pair needs to be swapped
      if index + 1 < array.length && element > array[index + 1] 
        # swap pair of elements
        array[index], array[index + 1] = array[index + 1], array[index]
        # set flag to true (because it's still sorting)
        not_sorted = true
      end
    end
    break unless not_sorted # continue to next interation if not_sorted = true
  end
  p array
end

bubble_sort([15, 11, 18, 13, 10, 14])