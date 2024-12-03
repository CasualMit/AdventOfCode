# Mitchell Huitema
# Dag 1 Advent of Code

file = "dag_1/input"

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

def calculate_distance(left, right)
  diff = []
  left.zip(right).each do |x|
    diff.append((x[0]-x[1]).abs)
  end
  diff.sum
end

def compare_lists(left, right)
  similarity_score = []
  tallied_r = right.tally
  for int in left
    if tallied_r.has_key?(int)
      similarity_score.append(tallied_r.fetch(int)*int)
    end
  end
  similarity_score.sum
end


lists = parse_input(file)

print(calculate_distance(lists[0], lists[1]))
print(compare_lists(lists[0], lists[1]))
