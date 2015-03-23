#!/usr/bin/env ruby
require 'pry'

require_relative 'deck'
require_relative 'card'
require_relative 'hand'

@deck = Deck.new
card_1 = @deck.draw!
card_2 = @deck.draw!

puts card_1.to_string
puts card_2.to_string

player_hand = Hand.new([card_1, card_2])
puts "Your score: #{player_hand.score}"

# game_over = false

# while game_over == false

while player_hand.score < 21
  puts "Hit? Y or N"
  hit = gets.chomp.downcase
  while hit == "y"
    # if hit == "y"
    card = @deck.draw!
    puts card.to_string
    player_hand.cards << card
    puts "Your score: #{player_hand.score}"
    # else
    # end
    # end
    if player_hand.score > 21
      puts "Bust!"
      # game_over = true
      break
    end
    if player_hand.score == 21
      puts "You win"
      # game_over = true
      break
    end
    puts "Hit? Y or N"
    hit = gets.chomp.downcase
  end

  # check for Aces?  Subtrack 10 if over 21 and Ace present

  if hit != "y"
    # game_over = true
    break
  end
end

if player_hand.score < 21

  card_3 = @deck.draw!
  card_4 = @deck.draw!

  puts "Dealer Hand: #{card_1.to_string} \n #{card_2.to_string}"

  dealer_hand = Hand.new([card_3, card_4])

  puts "Dealer Score: #{dealer_hand.score}"

  while dealer_hand.score < 18
    card = @deck.draw!
    puts card.to_string
    dealer_hand.cards << card
    puts "Dealer Score: #{dealer_hand.score}"
    if dealer_hand.score == 21
      puts "Dealer wins"
      # game_over = true
    elsif dealer_hand.score > 21
      puts "Dealer bust"
      # game_over = true
    end
    # game_over = true
  end

else

end

#end

if player_hand.score == 21
  "Blackjack!"
elsif player_hand.score > 21
  puts "You Lost!"
elsif dealer_hand.score > 21
  puts "You Win!"
elsif player_hand.score >= dealer_hand.score
  puts "You win!"
else
  puts "You lost!"
end
