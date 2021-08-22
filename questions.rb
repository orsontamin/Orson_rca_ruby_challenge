require 'date'

########## Question 1 ############
# Return the next number of the given integer
def next_number(num)
  return num.to_i + 1
end

########## Question 2 ############
# Minutes into seconds
def minutes_into_seconds(minutes)
  return minutes.to_i * 60
end

########## Question 3 ############
# Return first element in an array
def get_first_element(arr)
  return arr[0]
end

########## Question 4 ############
# Return integer from string
# Return 0 if it is invalid
def string_to_integer(str)
  new_str = str.to_i
  if (new_str.is_a? Integer)
    return new_str
  else
    return 0
  end
end

########## Question 5 ############
# Return true if number is more than 0
# Return false if number is less than or equal to 0
# Return 'undefined' if it is invalid
def positive_number(num)
  if num.is_a? String
    return 'undefined'
  elsif num > 0
    return true
  elsif num <= 0
    return false
  end
end

########## Question 6 ############
# Reverse a given string
def reverse(str)
  return str.reverse()
end

########## Question 7 ############
# Return true if sum of two numbers is more than 100, else false
def more_than_100(num1, num2)
  num1 + num2 > 100
end

########## Question 8 ############
# Return the unique number in an array
def unique_number(arr)
  for i in arr
    if arr.count(i) === 1
      return i
    end
  end
end

########## Question 9 ############
# Return the length of nested array
def get_length(arr)
  return arr.flatten.length
end

########## Question 10 ############
# keep only the elements that start with an a
def select_elements_starting_with_c(arr)
  arr.select { |word| word.start_with?('c') }
end

########## Question 11 ############
# Remove instances of nil (but NOT false) from an array
def remove_nils_from_array(arr)
  return arr.compact
end

########## Question 12 ############
# Remove instances of nil AND false from an array
def remove_nils_and_false_from_array(arr)
  arr.compact.filter_map{|i| i if i != false}
end

########## Question 13 ############
# Reverse every word in an array and return it
def reverse_every_element_in_array(arr)
  arr.map {|i| i.reverse}
end

########## Question 14 ############
# Return each possible pairing outcome in an array
def every_possible_pairing_of_word(arr)
  new_arr = arr.combination(2).to_a
end

########## Question 15 ############
# Turn an array of numbers into two arrays of numbers
# First array in the array is all even numbers
# Second array in the array is all odd numbers
def separate_arr_into_even_and_odd_num(arr)
  even, odd = arr.partition(&:even?)
end

########## Question 16 ############
# Sorting string by last alphabet/character
def sort_by_last_char(str)
  str.split(" ").sort{ |a,b| a[-1] <=> b[-1] }.join(" ")
end

########## Question 17 ############
# Serving drinks to people above age 18 and older, and when not on break time
# Return true if age is equal and above 18, when not on break time
# Return false if age is equal and above 18, when on break time
# Return false if age is below 18
def serve_drink(age, onBreak)
  age >= 18 && !onBreak
end

########## Question 18 ############
# Sum an array by the first (n) numbers
def sum_numbers(arr, n)
  new_arr = arr[0...n].sum
end

########## Question 19 ############
# String to binary, range from a-m will be 0, range from n-z will be 1
def string_to_binary(str)
  new_str = str.gsub(/[a-mA-M]/,'0').gsub(/[n-zN-Z]/, '1')
  #new_str.gsub(/[n-zN-Z]/, '1')
end

########## Question 20 ############
# Find missing numbers range from 1 to 10 in an array
def find_the_missing_numbers(arr)
  (1..10).to_a - arr
end

########## Question 21 ############
# Swap two digits and see if it is larger than the one swapped
# Return true if it is larger than the one swapped
# Return false if it is smaller than the one swapped
def compare_number_after_swap(num)
  new_num = num.to_s.reverse.to_i
  new_num < num
end

########## Question 22 ############
# Return index of the first vowel
def index_of_the_first_vowel(str)
  str.index(/[AaEeIiOoUu]/)
end

########## Question 23 ############
# Return sum of two largest numbers in array
def sum_of_two_largest_numbers(arr)
  arr.max(2).reduce(:+)
end

########## Question 24 ############
# Return sum of two smallest numbers in array
def sum_of_two_smallest_numbers(arr)
  arr.min(2).reduce(:+)
end

########## Question 25 ############
# Return sum of positive number
def sum_of_positive(arr)
  #arr.select(&:positive?).sum
  arr.select{|e| e>=0}.sum
end

########## Question 26 ############
# Return sum of negative number
def sum_of_negative(arr)
  #arr.select(&:negative?).sum
  arr.select{|e| e<0}.sum
end

########## Question 27 ############
# Sum positive number, count negative number
def sum_positive_count_negative(arr)
  positives, negatives = arr.partition(&:positive?)
  [ positives.inject(0,&:+), negatives.length ]
end

########## Question 28 ############
# Count positive number, sum negative number
def count_positive_sum_negative(arr)
  positives, negatives = arr.partition(&:positive?)
  [ positives.length, negatives.inject(0,&:+) ]
end

########## Question 29 ############
# Return file extention from files
def get_file_extension(arr)
    arr.map! {|item| File.extname(item).delete(".")}
end

########## Question 30 ############
# Validation Zip code format
def validation_of_zip_code(code)
  code.scan(/^\d+$/).any?
  #code.scan(/\D/).empty?
end

########## Question 31 ############
# Keeps only strings with repeating identical characters
def filter_repeated_character_strings(arr)
  arr.select{|element| element == element.reverse}
end

########## Question 32 ############
# Rock Paper Scissors
def rock_paper_scissors(player_1, player_2)
  if player_1 == player_2
    p "It's a draw!"
  elsif (player_1 == 'Paper' && player_2 == 'Rock') || (player_1 == 'Rock' && player_2 == 'Scissors')
    p "Player 1 wins"
  else
    p "Player 2 wins"
  end
end

########## Question 33 ############
# Get the final price after applying discount
def price_after_discount(price, discount)
  new_price = price - (price * discount / 100)
end

########## Question 33 ############
# Order above 100 to eligible for free shipping
def check_for_eligible_of_free_shipping(order)
  order.values.map.reduce(0, &:+) > 100
end
########## Question 34 ############
#https://stackoverflow.com/questions/21977381/ruby-getting-the-longest-word-of-a-sentence
# Return the first found longest word
def get_the_longest_word(str)
  arr = str.split(" ")
  arr.sort! { |a, b| b.length <=> a.length }
  arr[0]
end

########## Question 35 ############
# Return the first found shortest word
def get_the_shortest_word(str)
  arr = str.split(" ")
  arr.sort! { |a, b| b.length <=> a.length }
  arr[-1]
end

########## Question 36 ############
# Check if a month in a particular year contains a Sunday 7th
def has_sunday_with_date_7(month, year)
  Date.new(year,month,7).sunday?
end

########## Question 37 ############
# Filter array with strings and integers, return strings only
def filter_out_integers(arr)
  #arr.map! {|i|  }
  arr.grep String
end

########## Question 38 ############
# Filter array with strings and integers, return integers only
def filter_out_strings(arr)
  #arr.each_with_index do |index|
    #arr.scan(/\d+\.?\d*/)
    arr.grep Integer
end


########## Question 40 ############
# Get the next alphabet of every letter of a word
def the_next_alphabet(word)
  new_word = word.split('')
  new_word.each {|i| i.next!}.join
end

########## Question 41 ############
# Count each alphabet 'X', 'Y', 'Z' from a given string
def calculate_alphabet(word)
  word.chars.sort.tally.values
end

########## Question 42 ############
# Capitalize first letter of each word
def capitalize_letter_of_each_word(str)
  str.split.map(&:capitalize).join(' ')
end

########## Question 43 ############
# Reverse words which have even length
def reverse_even_words(str)
  str.split.map {|elem|
  if elem.length % 2 == 0 then elem.reverse else elem end}.join(" ")end

########## Question 44 ############
# Sorting an array with 'asc', 'dsc', 'none'
def sorting_an_array(arr, order)
  if order == 'dsc'
    arr.sort.reverse
  elsif order == 'asc'
    arr.sort
  else
    arr
  end
end

########## Question 45 ############
# Return an array of index of small letter
def index_of_small_letter(word)
  word.split("").map {|i| if i == i.downcase then word.index(i) end}.compact
end

########## Question 46 ############
# Word Spelling
# Using recursive function
def word_spelling(word)
  return [] if word.size < 1
    ((0..word.size-1).map do |pos|
    word[0..pos]
  end)
end

########## Question 47 ############
# Sum up only numbers in an array
def sum_up_numbers(arr)
  arr.select {|elem| elem.is_a?(Integer)}.inject(0, :+)
end

########## Question 48 ############
# Perform operation of 4 types, if divided by 0 then is undefined
# Add, Subtract, Multiply, Divide
def operation_of(a, b, op)
   op = { 'add' => '+', 'subtract' => '-', 'multiply' => '*', 'divide' => '/'} [op]
   a.send(op,b) rescue "undefined"
end

########## Question 49 ############
# Hashtag generator
# Start with a hashtag
# Capitalized first letter for each word
# Return false if empty string or more than 30 characters
def hashtag(str)
  if str.length > 0 && str.length <= 30
    str.split(' ').map(&:capitalize).join('').insert(0, "#")
  else
    return false
  end
end

########## Question 50 ############
# Reformat date to be [MM, DD, YYYY]
def date_reformatting(date)
  new_date = Date.parse(date).strftime('%d,%m,%Y')
  new_date.split(",").map(&:to_i)
end
