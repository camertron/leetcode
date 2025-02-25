def two_sum(nums, target)
  sorted_nums = nums.map.with_index.to_a
  sorted_nums.sort_by! { |el| el[0] }

  nums.each_with_index do |first, first_idx|
    needed = target - first
    _, second_idx = sorted_nums.bsearch { |el| needed <=> el[0] }
    return [first_idx, second_idx] if second_idx && first_idx != second_idx
  end

  []
end

nums = [2,7,11,15]
target = 9

if two_sum(nums, target) == [0, 1]
  puts "😎"
else
  puts "🙅"
end
