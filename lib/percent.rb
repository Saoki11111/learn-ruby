# %q シングルクオートで囲む
str = %q(Programing language "#{ruby}")
puts str
# => Programing language "#{ruby}"

# %w 配列を作る
array = %w(one two three four)
p array
# => ["one", "two", "three", "four"]

# %W 配列式展開される
ruby = 'Ruby'
PYTHON = 'Python'

array = %W(#{ruby} #{PYTHON} PHP)
p array
# ["Ruby", "Python", "PHP"]

# %i シンボルの配列を作る
array = %i(Ruby Python PHP)
p array
# => [:Ruby, :Python, :PHP]

## %I シンボル配列が式展開される
#ruby = 'Ruby'
#PYTHON = 'Python'
#
#array = %W(#{ruby} #{PYTHON} PHP)
#p array

# %x コマンド出力
res = %x(date)
puts res
# => date

# %s シンボル
sym = %s(Ruby) 
p sym
