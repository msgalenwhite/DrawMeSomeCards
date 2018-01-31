class Card
  attr_reader :suit, :value

  def initialize (suit, value)
    @suit = suit
    @value = value
  end

  def make_card(suit, value, spaces)
    top_bottom_line = " #{"-"*13}"
    empty_row = "|#{" "*13}|"
    suit_row = "|      #{suit}      |"
    top_row = "| #{value}#{" "*spaces}#{suit} |"
    bottom_row = "| #{suit}#{" "*spaces}#{value} |"

    card = [
      top_bottom_line,
      top_row,
      empty_row,
      empty_row,
      suit_row,
      empty_row,
      empty_row,
      bottom_row,
      top_bottom_line
    ]

    return card
  end

  def color_card(suit, value)
    if suit === '❤' || suit == '♦'
      value = value.to_s.colorize(:red)
      suit = suit.colorize(:red)
    end

    results = {
      :suit => suit,
      :value => value
    }
    return results
  end

  def draw_full_card

    spaces = 9
    if value.to_s.length === 2
      spaces -= 1
    end

    color_results = color_card(@suit, @value)

    card = make_card(color_results[:suit], color_results[:value], spaces)

    puts card.join("\n")
  end

end
