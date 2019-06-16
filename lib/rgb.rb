def to_hex(r,g,b)
  # to_s(16) で16進数に変換させる
  # rjust で桁の文字列で返す
  hex = '#' 
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, '0')
  end
  # 戻り値として必要...?
  hex
end


#puts to_hex(255,255,255)
