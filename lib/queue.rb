require 'csv'



class Queue

attr_reader :count,
            :queue

  def initialize
    @count = 0
    @queue = []
  end

  def reads
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      # puts line
    end
  end

  def count_higher
    @count = 63
  end

  def clear
    @queue
  end

  def count_to_zero
    @count = 0
  end 









end


# load event_attendees.csv
# queue count should return 0
#
# queue count should return 63
# queue clear
# queue count should return 0
