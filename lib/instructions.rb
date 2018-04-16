require 'pry'
class Instructions

  def initialize
  end

  def instructions
    user_input = ''
    puts "Entering queue\n"
    puts "Lists of commands, queue count\n
    queue clear\n
    queue district\n
    queue print\n
    queue print by attribute\n
    queue save\n
    queue export\n
    html, and queue find"
    until user_input == 'queue count' || user_input == 'Queue count'
      puts "The queue count is currently at #{}."
      if user_input == 'queue clear'
        puts 'The queue is now clear'
      elsif user_input == 'queue district'
        puts #{}
      elsif user_input == 'queue print'
        puts 'the queue is now printing'
      end
    end
  end
end






















# help should list the commands
# help queue count should explain the queue count function
# help queue print should explain the printing function
