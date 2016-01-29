require 'soil/soil'
require 'minitest/autorun'


class TestSoil < Minitest::Test

  def setup
    @soil = Soil.new
  end

  def test_soil_class
    assert_equal Soil, @soil.class
  end

  def test_soil_metric
    assert_equal false, @soil.metric
    @soil.metric = true
    assert_equal true, @soil.metric
  end

  def test_soil_sub
    assert_equal false, @soil.submerged
    @soil.submerged = true
    assert_equal true, @soil.submerged
  end

  def test_cust_attr
    assert_equal false, @soil.uw
    assert_equal :pcf, @soil.uw_unit
    @soil.uw = 15
    assert_equal 15, @soil.uw
    @soil.metric = true
    assert_equal 30, @soil.uw
    assert_equal 'kN/m^3', @soil.uw_unit
    @soil.uw = 10
    assert_equal 10, @soil.uw
    @soil.metric = false
    assert_equal 5, @soil.uw
  end



end
