# Leet と呼ばれるインターネットスラングがあります。
# Leet では
#   いくつかのアルファベットを
#   よく似た形の他の文字に置き換えて表記します。
# Leet の置き換え規則はたくさんありますが、
# ここでは次の置き換え規則のみを考えましょ

# input_line = gets

puts '入力'
input_line = gets.to_s
puts input_line

puts '出力'
leet = { 'A' => 4, 'B' => 5 }
puts leet.values
puts leet.keys

puts '一致しているか？'
puts leet.values if leet.keys == input_line

# array = leet
# 
# if input_line == leet.keys
#   puts array
# end

# pending
