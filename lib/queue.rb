require 'csv'

class Queue
  attr_reader :attendees,
  :count

  def initialize
    @attendees = []
    @count = 0
  end
  
  def empty
    @attendees
  end

  def count
    @count += 63
  end

  def empty?
    @attendees.empty?
    true
  end
end
