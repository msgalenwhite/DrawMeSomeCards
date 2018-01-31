require "colorize"
require_relative "Deck"

# trial_deck = Deck.new()
# trial_deck.shuffle
# trial_deck.deck.each do |card_object|
#   card_object.draw_full_card
# end

test_card = Card.new('♦', "A")
test_card2 = Card.new('♠', 10)

test_card.draw_full_card

test_card2.draw_full_card

top_bottom_line = " #{"-"*13}"
top_row = "| #{"A"}#{" "*9}#{'♠'} |"
empty_row = "|#{" "*13}|"
gap = "|   "


puts "four cards"
puts top_bottom_line
puts top_row
puts gap+top_bottom_line
puts gap+top_row
puts gap+gap+top_bottom_line
puts gap+gap+top_row
puts gap+gap+gap+top_bottom_line #this is where the bottom of the first card would be showing the suit
puts gap+gap+gap+top_row #this would be the very bottom of the first card


puts "three cards"
puts top_bottom_line
puts top_row
puts gap+top_bottom_line
puts gap+top_row
puts gap+gap+top_bottom_line
puts gap+gap+top_row

puts "two cards"
puts top_bottom_line
puts top_row
puts gap+top_bottom_line
puts gap+top_row

puts "alternative two cards"
puts " ---"+top_bottom_line
puts "| A "+top_row
