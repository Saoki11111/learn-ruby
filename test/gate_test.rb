require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

# scenario test 1
# 150円で切符を購入する
# 梅田で入場、十三で出場
# 期待結果:出場できる

class GateTest < Minitest::Test
  def test_gate
    # 改札機オブジェクトの作成
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    # 150円の切符を購入して
    ticket = Ticket.new(150)
    # 梅田で乗車
    umeda.enter(ticket)
    # 十三で降車
    assert juso.exit(ticket)
  end
end

# scenario test 2
# 150円で切符を購入する
# 梅田で入場、三国で出場
# 期待結果:出場できない

class GateTest < Minitest::Test
  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(150)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end
