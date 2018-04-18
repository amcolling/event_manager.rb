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

def test_queue_search
  em = EventManager.new("John")
  lines = File.readlines "event_attendees.csv"
  assert_equal 1, em.queue_search
end
