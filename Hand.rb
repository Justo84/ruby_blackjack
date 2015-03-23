class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def score
    score = 0
    cards.each do |card|
      if card.value == "A"
        score += 11
      elsif card.face_card?
        score += 10
      else
        score += card.value.to_i
      end
    end
    score

  end

end
