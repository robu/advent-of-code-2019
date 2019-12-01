def fuel(mass)
  [(mass / 3.0).truncate - 2, 0].max
end

def fuel_recursive(mass)
  f = fuel(mass)
  return 0 if f <= 0
  f + fuel_recursive(f)
end

File.open('input1.txt') do |f|
  lines = f.readlines
  puts "part 1: #{lines.map{|line| fuel(line.to_i)}.sum}"
  puts "part 2: #{lines.map{|line| fuel_recursive(line.to_i)}.sum}"
end
