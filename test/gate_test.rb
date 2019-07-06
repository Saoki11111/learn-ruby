require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
  # テストメソッドが実行される前にこのメソッドが呼ばれる
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  # scenario test 1
  # 150円で切符を購入する
  # 梅田で入場、十三で出場
  # 期待結果:出場できる

  def test_umeda_to_juso
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  # scenario test 2
  # 150円で切符を購入する
  # 梅田で入場、三国で出場
  # 期待結果:出場できない
  
  def test_umeda_to_mikuni_when_fare_is_not_enough
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  # scenario test 3
  # 190円で切符を購入する
  # 梅田で入場、三国で出場
  # 期待結果:出場できる

  def test_umeda_to_mikuni_when_fare_is_enough
    ticket = Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  # scenario test 4
  # 150円で切符を購入する
  # 十三で入場、三国で出場
  # 期待結果:出場できる

  def test_juso_to_mikuni
    ticket = Ticket.new(150)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end
end
