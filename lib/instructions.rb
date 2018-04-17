require 'pry'
class Instructions

  def initialize
  end

  # help queue count should explain the queue count function
  # help queue print should explain the printing function
  # help should list the commands
  def help
    user_input = ''
    puts "Would you like to (e)nter the queue, get (h)elp, or (q)uit?"
    user_input = gets.chomp
    puts "Entering queue..............\n"
    until user_input == "q" || user_input == "quit"
      if user_input == 'queue count'
        puts 'outputs how many records are currently in the queue'
      elsif user_input == 'help'
        puts '"Lists of command options to enter\n
        (q)ueue (c)ount\n
        (q)ueue (c)lear\n
        (q)ueue (d)istrict\n
        (q)ueue (p)rint\n
        (q)ueue (p)rint by (a)ttribute\n
        (q)ueue (s)ave\n
        (q)ueue (e)xport (h)tml\n
        and (q)ueue (f)ind"'
      elsif user_input == 'queue clear'
        puts 'The queue is now clear'
      elsif user_input == 'queue district'
        puts #{}
      elsif user_input == 'queue print'
        puts 'the queue is now printing'
      end
      gets.chomp
    end
  end








end
