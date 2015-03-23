require_relative 'card'

SUITS = ["♦","♣","♠","♥"]
VALUES = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]

class Deck
  def initialize
    @deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @deck << Card.new(value, suit)
      end
    end
    @deck.shuffle!
  end

  def draw!
    @deck.pop
  end
end
