card_names = { 
  1 => "Ace of Spades",
  13 => "King of Spades",
  12 => "Queen of Spades",
  11 => "Jack of Spades",
  10 => "10 of Spades",
  9 => "9 of Spades",
  8 => "8 of Spades",
  7 => "7 of Spades",
  6 => "6 of Spades",
  5 => "5 of Spades",
  4 => "4 of Spades",
  3 => "3 of Spades",
  2 => "2 of Spades",
  14 => "Ace of Hearts",
  26 => "King of Hearts",
  25 => "Queen of Hearts",
  24 => "Jack of Hearts",
  23 => "10 of Hearts",
  22 => "9 of Hearts",
  21 => "8 of Hearts",
  20 => "7 of Hearts",
  19 => "6 of Hearts",
  18 => "5 of Hearts",
  17 => "4 of Hearts",
  16 => "3 of Hearts",
  15 => "2 of Hearts",
  27 => "Ace of Clubs",
  39 => "King of Clubs",
  38 => "Queen of Clubs",
  37 => "Jack of Clubs",
  36 => "10 of Clubs",
  35 => "9 of Clubs",
  34 => "8 of Clubs",
  33 => "7 of Clubs",
  32 => "6 of Clubs",
  31 => "5 of Clubs",
  30 => "4 of Clubs",
  29 => "3 of Clubs",
  28 => "2 of Clubs",
  40 => "Ace of Diamonds",
  52 => "King of Diamonds",
  51 => "Queen of Diamonds",
  50 => "Jack of Diamonds",
  49 => "10 of Diamonds",
  48 => "9 of Diamonds",
  47 => "8 of Diamonds",
  46 => "7 of Diamonds",
  45 => "6 of Diamonds",
  44 => "5 of Diamonds",
  43 => "4 of Diamonds",
  42 => "3 of Diamonds",
  41 => "2 of Diamonds"
}

card_points = {
  11 => [1, 14, 27, 40],
  10 => [10, 11, 12, 13, 23, 24, 25, 26, 36, 37, 38, 39, 49, 50, 51, 52],
  9 => [9, 22, 35, 48],
  8 => [8, 21, 34, 47],
  7 => [7, 20, 33, 46],
  6 => [6, 19, 32, 45],
  5 => [5, 18, 31, 44],
  4 => [4, 17, 30, 43],
  3 => [3, 16, 29, 42],
  2 => [2, 15, 28, 41]
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
