def merge_sort(array)
  if array.length <= 1
    return array
  end
  left = array[0...array.length/2]
  right = array[array.length/2...array.length]
  merge(merge_sort(left), merge_sort(right))
end


def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result.concat(left).concat(right)
end
