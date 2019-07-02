# 10進数を16進数に変換(メソッドを使わない)
num = 1967

puts "最下位"
one_num = num % 16
puts one_num

puts "あまり"
num = num / 16
puts num

puts "二番目"
two_num = num % 16
puts two_num

puts "あまり"
num = num / 16
puts num

puts "最上位"
three_num = num % 16
puts three_num

puts "あまり"
num = num / 16
puts num

puts "#{num}" + "#{three_num}" + "#{two_num}" + "#{one_num}"
