def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_total = deal_card + deal_card
  display_card_total(first_total)
  return first_total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  elsif user_input == 's'
    
  else
    invalid_command
    prompt_user
    get_user_input
  end 
  return card_total
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  running_total = hit?(initial_round)
  display_card_total(running_total)
  until running_total > 21 do 
    hit?(running_total)
  end 
  end_game(running_total)
end
