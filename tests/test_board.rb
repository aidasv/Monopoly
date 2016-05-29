require 'test/unit'
require './lib/monopoly'

class  TestBoard < Test::Unit::TestCase

  def test_smoke
    Board.new.draw
  end

end
