require_relative "Card"

SUITS = ['♦', '♠', '♣', '❤']

VALUES = [2, 3, 4, 5, 6, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

class Deck
  attr_reader :deck
  def initialize
    @deck = make_deck
  end

  def make_deck
    deck = []
    ::SUITS.each do |suit|
      ::VALUES.each do |card_value|
        deck << Card.new(suit, card_value)
      end
    end
    return deck
  end

  def shuffle
    @deck.shuffle!
  end
end
