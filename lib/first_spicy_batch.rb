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
  
  #mid = n / 2
  spicy_batch = 0
  return spicy_batch if n >= spicy_batch
  for batch in 0..n do
    if is_spicy_batch(batch)
      spicy_batch = batch
      break
    else
      batch += 1
    end
  end
  
  #if is_spicy_batch(mid)
    #if is_spicy_batch(mid - 1)
     # return first_spicy_batch(mid - 1)
    #else 
    #  return spicy_batch = mid
   # end
  #else
  #  return first_spicy_batch(mid + 1)
  #end
  

end
