require 'minitest/autorun'
require 'minitest/pride'
# require './lib/event_manager'
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

end
