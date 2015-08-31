require_relative '../bow.rb'
require 'test/unit'

class BowTest < Test::Unit::TestCase
  def setup
  	@bow = Bow.new(250)
  end

  # def teardown
  # end

  def bow_speed
    assert_equal(250, @bow.speed, 'It\'s true')
  end
end