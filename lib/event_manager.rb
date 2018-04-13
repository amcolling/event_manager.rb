require "csv"
puts "EventManager initialized."

contents = File.read "event_attendees.csv"
puts contents

class EventManager
  attr_reader :queue_count

  def initialize(count)
    @queue_count = 0
  end









end
