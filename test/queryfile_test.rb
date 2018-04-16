require 'minitest/autorun'
require 'minitest/pride'
# require './lib/event_manager'
# require './lib/queue'
# require './lib/instructions'
require 'minitest/emoji'
require '.lib/queryfile'

class QueryFileTest < Minitest::Test
  def test_it_exists
    qf = QueryFile.new
    assert_instance_of QueryFile, qf
  end

  def test_find_first_name
    qf = QueryFile.new("John")
    assert_equal "John", qf.find_first_name
  end






end
