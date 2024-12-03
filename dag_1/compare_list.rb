# Mitchell Huitema
# Dag 1 Advent of Code

# Parse input file to two seperate lists left and right
# Sort left and right small to large
# Compare numbers and add difference to new list (diff)
# Sum diff

file = "input"

def parse_input(input)
  list_left = []
  list_right = []
  
  File.open(input).each do |line|
    split = line.split()
    list_left.append(split[0].to_i)
    list_right.append(split[1].to_i)
  end
  return list_left.sort, list_right.sort
end

def compare_lists(left, right)
  diff = []
  left.zip(right).each do |x|
    diff.append((x[0]-x[1]).abs)
  end
  diff.sum
end


lists = parse_input(file)
print(compare_lists(lists[0], lists[1]))
