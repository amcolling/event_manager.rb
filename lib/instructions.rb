require 'pry'
require 'csv'
class Instructions

  def initializelin
  end

  # help queue count should explain the queue count function
  # help queue print should explain the printing function
  # help should list the commands
  def help
    loop do
      user_input = ''
      puts "Entering queue..............\n"
      puts "Would you like to (e)nter the queue, get (h)elp, or (q)uit?"
      user_input = gets.chomp
      until user_input == "q" || user_input == "quit"
        if user_input == 'queue count'
          puts 'outputs how many records are currently in the queue'
        elsif user_input == 'help'
          puts "Lists of command options to enter\n
          (q)ueue (c)ount\n
          (q)ueue (c)lear\n
          (q)ueue (d)istrict\n
          (q)ueue (p)rint\n
          (q)ueue (p)rint by (a)ttribute\n
          (q)ueue (s)ave\n
          (q)ueue (e)xport (h)tml\n
          and (q)ueue (f)ind"
          user_input == gets.chomp
        elsif user_input == "load queue"
          puts File.read "event_attendees.csv"
        elsif user_input == 'queue clear'
          puts 'The queue is now clear'
        elsif user_input == 'queue district'
          puts 'outputs district...'
        elsif user_input == 'queue print'
          puts 'the queue is now printing'
        end
        gets.chomp
      end
    end
  end
end
