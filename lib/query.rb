require 'pry'
require 'csv'

class Query
attr_reader :count,
            :lines
attr_accessor :queue

  def initialize
    @count = 0
    @lines = File.readlines "event_attendees.csv"
    @queue = []
  end

  # load
  def queue_load
    lines = File.readlines "event_attendees.csv"
  end

  # queue count should return 0
  def count_zero
    @count
  end

  # find first_name John
  def find_name
    lines = File.readlines "event_attendees.csv"
      lines.each do |line|
        lines.find { |row| row['John'] == 'John'}
        @queue << line[1]
      end
    end

    def find_name
    contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
    contents.each do |row|
      name = row[:first_name]

      end
    end











end


# B. Let's Try Printing

# find first_name Mary
# queue print should print out the 16 attendees
# queue print by last_name should print the same attendees sorted alphabetically by last name
# queue count should return 16










# find first_name John
