require 'pry'
require "csv"

class EventManager
  contents = File.read "event_attendees.csv"
  attr_reader :queue_count,
              :name

  def initialize(count)
    @queue_count = 0
    @name = name
  end

  def reads_file_line_by_line
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      # puts line
    end
  end

  def convert_string_to_array
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      columns = line.split (",")
      # p columns
    end
  end

  def first_name(name)
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      columns = line.split (",")
      name = columns[2]
      # p name
    end
  end

  def find_first_name
    # binding.pry
    lines = File.readlines "event_attendees.csv"
    lines.each do |line|
      lines.find {|row| row['name'] == 'John'}
    end
  end

  



end
