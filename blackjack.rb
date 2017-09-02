card_names = { 
  1 => "Ace of Spades",
  2 => "King of Spades",
  3 => "Queen of Spades",
  4 => "Jack of Spades",
  5 => "10 of Spades",
  6 => "9 of Spades",
  7 => "8 of Spades",
  8 => "7 of Spades",
  9 => "6 of Spades",
  10 => "5 of Spades",
  11 => "4 of Spades",
  12 => "3 of Spades",
  13 => "2 of Spades",
  14 => "Ace of Hearts",
  15 => "King of Hearts",
  16 => "Queen of Hearts",
  17 => "Jack of Hearts",
  18 => "10 of Hearts",
  19 => "9 of Hearts",
  20 => "8 of Hearts",
  21 => "7 of Hearts",
  22 => "6 of Hearts",
  23 => "5 of Hearts",
  24 => "4 of Hearts",
  25 => "3 of Hearts",
  26 => "2 of Hearts",
  27 => "Ace of Clubs",
  28 => "King of Clubs",
  29 => "Queen of Clubs",
  30 => "Jack of Clubs",
  31 => "10 of Clubs",
  32 => "9 of Clubs",
  33 => "8 of Clubs",
  34 => "7 of Clubs",
  35 => "6 of Clubs",
  36 => "5 of Clubs",
  37 => "4 of Clubs",
  38 => "3 of Clubs",
  39 => "2 of Clubs",
  40 => "Ace of Diamonds",
  41 => "King of Diamonds",
  42 => "Queen of Diamonds",
  43 => "Jack of Diamonds",
  44 => "10 of Diamonds",
  45 => "9 of Diamonds",
  46 => "8 of Diamonds",
  47 => "7 of Diamonds",
  48 => "6 of Diamonds",
  49 => "5 of Diamonds",
  50 => "4 of Diamonds",
  51 => "3 of Diamonds",
  52 => "2 of Diamonds"
}

# Aces = 1, 14, 27, 40
# Kings = 2, 15, 28, 41
# Queens = 3, 16, 29, 42
# Jacks = 4, 17, 30, 43
# 10 = 5, 18, 31, 44
# 9 = 6, 19, 32, 45
# 8 = 7, 20, 33, 46
# 7 = 8, 21, 34, 47
# 6 = 9, 22, 35, 48
# 5 = 10, 23, 36, 49
# 4 = 11, 24, 37, 50
# 3 = 12, 25, 38, 51
# 2 = 13, 26, 39, 52

card_points = {
  11 => [1, 14, 27, 40],
  10 => [2, 3, 4, 5, 15, 16, 17, 18, 28, 29, 30, 31, 41, 42, 43, 44],
  9 => [6, 19, 32, 45],
  8 => [7, 20, 33, 46],
  7 => [8, 21, 34, 47],
  6 => [9, 22, 35, 48],
  5 => [10, 23, 36, 49],
  4 => [11, 24, 37, 50],
  3 => [12, 25, 38, 51],
  2 => [13, 26, 39, 52]
}

def get_card_name(hand, card_names)
	friendly_name = []
	hand.each do |num|
	  friendly_name << card_names[num]
	end
		friendly_name.join(', ')
end

def get_card_points(hand, card_points)
  hand_points = []
  hand.each do |card|
    card_points.each do |key, value|
      value.each do |x|
        if x == card
          hand_points << key
        end
      end
    end
  end
  puts hand_points.join(', ')
  hand_points.inject { |sum, n| sum + n }
end

player_hand = []
dealer_hand = []
deck = (1..52).to_a.shuffle

print deck
puts " "

player_hand << deck.pop
dealer_hand << deck.pop
player_hand << deck.pop
dealer_hand << deck.pop

puts "Player is holding: #{player_hand}."
puts "Player is holding: #{get_card_name(player_hand, card_names)}"
puts "The hand is worth #{get_card_points(player_hand, card_points)} points."

puts " "
puts "Dealer is holding: #{dealer_hand}."
puts "Dealer is holding: #{get_card_name(dealer_hand, card_names)}"
puts "The hand is worth #{get_card_points(dealer_hand, card_points)} points."
