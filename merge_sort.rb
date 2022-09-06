# frozen_string_literal: true

def merge_sort(array)
  n = array.length
  if n == 1
    array
  else
    merge(merge_sort(array[0..(n / 2 - 1)]), merge_sort(array[(n / 2)..]))
  end
end

def merge(a, b, result = [])
  until a.empty? && b.empty?
    if b.empty? || !a.empty? && a.first <= b.first
      result << a.shift
    else
      result << b.shift
    end
  end
  result
end
