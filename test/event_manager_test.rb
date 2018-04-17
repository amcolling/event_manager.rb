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
    assert_equal [], em.queue
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
    assert_equal lines, em.find_first_name
  end

end

# A. Happy Path
#
# queue count should return 63
# queue clear
# queue count should return 0
# help should list the commands
# help queue count should explain the queue count function
# help queue print should explain the printing function
