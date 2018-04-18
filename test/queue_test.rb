require 'minitest/autorun'
require 'minitest/pride'
require './lib/event_manager'
require 'pry'
require './lib/queue'


class QueueTest < Minitest::Test

  def test_reads_file_lines
    q = Queue.new
    assert_instance_of Queue, q
  end

  def test_queue_empty
    q = Queue.new
    assert_equal [], q.empty
  end

  def test_count
    q = Queue.new
    assert_equal 63, q.count
  end

  def test_queue_clear?
    q = Queue.new
    assert_equal true, q.empty?
  end

  def test_count_zero
    q = Queue.new
    assert_equal 0, q.count
  end

end
