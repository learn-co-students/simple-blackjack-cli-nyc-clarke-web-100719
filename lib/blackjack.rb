def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1 
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  score = 0;
  2.times{score +=deal_card}
  display_card_total(score)
  score
end

def hit?(total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    total += deal_card
  elsif user_input == "s"
  else
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  card_tot = initial_round
  while card_tot < 21 do
  card_tot = hit?(card_tot)
  display_card_total(card_tot)
  end
  end_game(card_tot)
end
    