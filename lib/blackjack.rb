def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand_number  = rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.strip
end

def end_game(arg)
  puts "Sorry, you hit #{arg}. Thanks for playing!"
end

def initial_round
  answer=0
 2.times do 
   answer+= deal_card
 end
  display_card_total(answer)
  return answer
end

def hit?(arg) 
print prompt_user
user_input = get_user_input
case user_input
when "h"
arg+= deal_card
when "s"
  arg+=0
else
  invalid_command
  prompt_user
get_user_input
end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  arg = initial_round
  until arg > 21
  arg = hit?(arg)
  display_card_total(arg)
end
end_game(arg)
end
    
