require_relative '../bow.rb'
require_relative '../arrow.rb'
require 'test/unit'

class BowTest < Test::Unit::TestCase
  def setup
  	@bow = Bow.new(250)
  	@arrow = Arrow.new(400, @bow)
  end

  # def teardown
  # end

  def bow_speed
    assert_equal(250, @bow.speed, 'It\'s true')
  end

  def test_KE
  	assert_equal(55.53, @arrow.kinetic_energy.round(2), 'Assertion was true')
  end

  def test_momentum
  	assert_equal(0.44, @arrow.momentum.round(2), 'Assertion was true')
  end

  def test_game
  	assert_equal('large game', @arrow.game_type, 'Assertion was true')
  end
end