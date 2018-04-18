require 'pry'
require "csv"




class EventManager

  attr_reader :queue_count,
              :name,
              :queue

  def initialize(count)
    @queue_count = 0
    @name = name
    @queue = []
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

  def queue_search
    lines = File.readlines "event_attendees.csv"
    lines.map do |line|
      columns = line.split (",")
      columns.count("Allison")

    end
  end

end
