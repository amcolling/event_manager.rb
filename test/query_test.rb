require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/emoji'
require './lib/query'

class QueryTest < Minitest::Test
  def test_it_exists
    q = Query.new
    assert_instance_of Query, q
  end
end
