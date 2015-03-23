class Card
  attr_reader :value, :rank
  def initialize(value, rank)
    @value = value
    @rank = rank
  end

  def to_string
    "#{rank} #{value}"
  end

  def face_card?
    ['J', 'K', 'Q'].include?(value)
  end


end
