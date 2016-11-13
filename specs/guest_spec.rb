require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')


class TestGuest < Minitest::Test

  def setup
    @singer = Guest.new('Alice', 001)
  end

  def test_guest_has_name()
    assert_equal('Alice', @singer.name)
  end

  def test_guest_has_id()
    assert_equal(001, @singer.id)
  end











end
