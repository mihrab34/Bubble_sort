def bubbleSort arr
       num = arr.length
    
       loop do
         sorted = false
        (num-1).times do |i|
          if arr[i] > arr[i + 1]
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            sorted = true
          end
        end
        break if not sorted
      end
      arr
    end

bubbleSort([4,3,78,2,0,2])

def bubble_sort_by arr
    num = arr.length

    loop do
    sorted = false
    (num-1).times do |i|
    if yield(arr[i], arr[i+1]).positive? 
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      sorted = true
          end
        end
        break if not sorted
      end
      arr
    end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end


