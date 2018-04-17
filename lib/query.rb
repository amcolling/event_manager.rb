require 'pry'
require 'csv'

class Query
  attr_reader :attendees

  def initialize
    @attendees = []
  end


  contents = CSV.open "event_attendees.csv"
  binding.pry

  def convert_string_to_array
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      columns = line.split (",")
      # p columns
    end
  end

  def convert_header
    contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
    contents.each do |row|
      name = row[:first_name]
      # puts name
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

#look up regex class










end


# B. Let's Try Printing

# find first_name Mary
# queue print should print out the 16 attendees
# queue print by last_name should print the same attendees sorted alphabetically by last name
# queue count should return 16










# find first_name John
