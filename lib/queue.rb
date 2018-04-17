require 'csv'

class Queue
  attr_reader :attendees

  def initialize
    @attendees = []
  end

  def empty
    @attendees
  end






end


# load event_attendees.csv
# queue count should return 0
#
# queue count should return 63
# queue clear
# queue count should return 0
