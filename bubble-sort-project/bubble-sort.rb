# frozen_string_literal: true

# Takes array of numbers as input and sorts them using the bubble sort method then returns the sorted array
def bubble_sort(nums)
  # Pre-count the first sorted number
  sorted = 1
  until sorted == nums.length
    # After each new largest number is sorted, we don't want to check them again so we subtract the
    # sorted count and an additional 1 so we don't reach out of the bounds of the array
    len = nums.length - sorted - 1
    (0..len).each do |i|
      next unless nums[i] > nums[i + 1]

      temp = nums[i + 1]
      nums[i + 1] = nums[i]
      nums[i] = temp
    end
    sorted += 1
  end
  nums
end
