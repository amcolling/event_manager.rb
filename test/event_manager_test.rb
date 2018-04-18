require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_manager'
require 'pry'
require './lib/queue'

# load event_attendees.csv
class EventManagerTest < Minitest::Test
  def test_it_exists
    em = EventManager.new("./data/full_event_attendees.csv")
    assert_instance_of EventManager, em
  end

  # queue count should return 0
  def test_queue
    em = EventManager.new([])
    assert_equal [], em.queue(name)
  end

  def test_queue_count
    em = EventManager.new(0)
    assert_equal 0, em.queue_count
  end

  def test_first_name
    em = EventManager.new("John")
    lines = File.readlines "event_attendees.csv"
    assert_equal lines,  em.first_name(name)
  end

  def test_find_first_name
    em = EventManager.new("John")
    lines = File.readlines "event_attendees.csv"
    assert_equal lines, em.first_name(name)
  end

  def test_queue_search
    em = EventManager.new("John")
    lines = File.readlines "event_attendees.csv"
    assert_equal [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], em.queue_search
  end

  def test_queue_search_city
    em = EventManager.new("John")
    assert_equal [0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] , em.queue_search_city
  end

  def test_queue_search_state
    em = EventManager.new("John")
    assert_equal [0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], em.queue_search_state
  end

  def test_last_name
    em = EventManager.new("John")
    assert_equal [], em.last_name(name)
  end
# A. Happy Path
#
# queue count should return 63
# queue clear
# queue count should return 0
# help should list the commands
# help queue count should explain the queue count function
# help queue print should explain the printing function
end
