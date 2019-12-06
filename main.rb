# frozen_string_literal: true

def bubble_sort(arr)
  num = arr.length
    
  loop do
    sorted = false
    (num - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2]) # =>[0,2,2,3,4,78]

def bubble_sort_by(arr)
  num = arr.length

  loop do
    sorted = false
    (num - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = true
      end
    end
    break unless sorted
  end
  arr
end

x = bubble_sort_by %w[hi hello hey] do |left, right|
  left.length - right.length
end

p x #=> ["hi", "hey", "hello"]
