require 'pry'
require 'csv'

class Query
  attr_reader :attendees

  def initialize
    @attendees = []
  end


  contents = CSV.open "event_attendees.csv"


  def convert_string_to_array
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      columns = line.split (",")
      end
  end

  def find_name
    contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
    contents.collect.each do |row|
      name = row[:first_name]
      @attendees << name
    end
  end

  def count
    contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
    contents.collect.each do |row|
      name = row[:first_name]
      @attendess << name
      @attendees.count("John")
    end
  end

  def queue_search
    lines = File.readlines "event_attendees.csv"
    lines.map do |line|
      columns = line.split (",")
      @attendees << columns.count("Allison")
    end
  end












end


# B. Let's Try Printing

# find first_name Mary
# queue print should print out the 16 attendees
# queue print by last_name should print the same attendees sorted alphabetically by last name
# queue count should return 16










# find first_name John
