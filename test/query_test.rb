require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/query'

class QueryTest < Minitest::Test
  def test_it_exists
    q = Query.new
    assert_instance_of Query, q
  end

  def test_queue_count_zero
    q = Query.new
    assert_equal 0, q.count_zero
  end 








end
