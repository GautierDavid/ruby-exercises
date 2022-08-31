def bubble_sort(arr, order)
  is_sorted = false
  order == "ascending" ? op = :> : op = :<

  until is_sorted
    is_sorted = true # initialize to true in case the array is sorted and allow to exit the until loop

    
    (arr.size - 1).times do |i| # iterate over the arr minus one iteration(cannot compare last value with next one cause is doesn't exist)
      if arr[i].public_send(op ,arr[i + 1]) # if current value > next value / public_send to change operator depending if you want ascending or descending order
        arr[i], arr[i + 1] = arr[i + 1], arr[i] # swap value
        is_sorted = false # reinitialize to false to stay inside the until loop
      end
    end
  end
  arr # return arr when it is sorted
end

p bubble_sort([4,3,78,2,0,2], "descending")