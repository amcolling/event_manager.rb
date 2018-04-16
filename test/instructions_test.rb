require 'minitest/autorun'
require 'minitest/pride'
# require './lib/event_manager'
require 'pry'
# require './lib/queue'
require './lib/instructions'

class InstructionsTest < Minitest::Test
  def test_it_exists
  instruction = Instructions.new
  assert_instance_of Instructions, instruction
  end

end
