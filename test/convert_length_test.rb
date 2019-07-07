require 'minitest/autorun'
require './lib/convert_length'

# メートル、インチ、フィート変換
# 1インチは約2.5cm
# 1フィートは約30cm、12インチ
# ちなみに1ヤードは3フィートで約0.9メートル
# さらに1マイル ＝ 1,760ヤードで約1609メートル）
class ConvertLengthTest < Minitest::Test
  def test_convert_length
    # 1mはinchに直すと39.37インチ
    assert_equal 39.37, convert_length(1,from: :m,to: :in)
    # 15インチはmに直すと0.38メートル
    assert_equal 0.38, convert_length(15,from: :in,to: :m)
    # 35000フィートはmに直すと35000メートル
    assert_equal 10670.73, convert_length(35000,from: :ft,to: :m)
  end
end
