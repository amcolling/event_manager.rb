require 'pry'
class Instructions

  def initialize
  end

  def help
    user_input = ''
    puts "Would you like to (e)nter the queue, read the (i)nstructions, or (q)uit?"
    user_input = gets.chomp
    puts "Entering queue..............\n"
    puts "Lists of command options to enter\n
    (q)ueue (c)ount\n
    (q)ueue (c)lear\n
    (q)ueue (d)istrict\n
    (q)ueue (p)rint\n
    (q)ueue (p)rint by (a)ttribute\n
    (q)ueue (s)ave\n
    (q)ueue (e)xport (h)tml\n
    and (q)ueue (f)ind"
    user_input = gets.chomp
    until user_input == "q" || user_input == "quit"
      if user_input == 'queue count'
        puts 'The queue count is currently at 0'
      elsif user_input == 'queue clear'
        puts 'The queue is now clear'
      elsif user_input == 'queue district'
        puts #{}
      elsif user_input == 'queue print'
        puts 'the queue is now printing'
      end
    end
  end



def queue_count
  user_input = ''
  if user_input == "help queue count"
    puts 'outputs how many records are currently in the queue'
  end
end

# help queue print should explain the printing function

def queue print
  user_input = ''
  if user_input == "help queue print"
    puts 'Print out a tab-delimited data table with a header row following this format:
    LAST NAME  FIRST NAME  EMAIL  ZIPCODE  CITY  STATE  ADDRESS  PHONE  DISTRICT'
  end
end

# help should list the commands
# help queue count should explain the queue count function
end
