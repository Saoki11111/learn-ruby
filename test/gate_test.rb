require 'minitest/autorun'
require './lib/gate'

class GateTest < Minitest::Test
  def test_gate
    # create Gate object
    assert Gate.new
  end
end
