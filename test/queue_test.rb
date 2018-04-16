require 'minitest/autorun'
require 'minitest/pride'
# require './lib/event_manager'
require 'pry'
require './lib/queue'


class QueueTest < Minitest::Test

  def test_reads_file_lines
    q = Queue.new
    contents = File.readlines "event_attendees.csv"
    assert_equal contents, q.reads
  end

  def test_count
    q = Queue.new
    assert_equal 0, q.count
  end

  def test_count_higher
   q = Queue.new
   assert_equal 63, q.count_higher
  end

  def test_queue_clear
    q = Queue.new
    assert_equal [], q.clear
  end

  def test_count_to_zero
    q = Queue.new
    assert_equal 0, q.count_to_zero
  end


end
