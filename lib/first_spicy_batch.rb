# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy
# def is_spicy_batch(batch):

# brute force solution - iterate over every batch starting at 1..n
# check each batch with is_spicy_batch to determine if it is spicy
# when first batch returns true, that is the answer
# O(n) time complexity, pretty slow once many batches

# binary search better option - check middle batch since already sorted increasing order
# if batch >= batch for which is_spicy_batch returns true, return the first spicy batch
# if middle batch is spicy, check middle - 1 to see if it is also spicy
# if mid -1 is not spicy, middle = answer
# if mid-1 is spicy, check range from 1..middle-1
# if middle batch is not spicy, check range from mid+1 to end in same way
# use recursion to simplify?

def first_spicy_batch(n)
  left = 0
  right = n

  while left < right 
    mid = (left + (right - left)) / 2

    if is_spicy_batch(mid)
      right = mid
    else
      left = mid + 1
    end
  end
  left

end
