#!/usr/bin/env ruby

message = ""
encrypted_message = ""
shift_number = 0

def caesar_cipher(message, shift_number)
  new_letter = ''
  encrypted_message = []

  message.split("").each do
    |letter|

    if /[[:upper:]]/.match(letter)
      new_letter = letter.ord + shift_number > 90 ? (letter.ord - 21).chr : (letter.ord + shift_number).chr
      encrypted_message << new_letter

    elsif /[[:lower:]]/.match(letter)
      new_letter = letter.ord + shift_number > 122 ? (letter.ord - 21).chr : (letter.ord + shift_number).chr
      encrypted_message << new_letter

    else
      encrypted_message << letter
    end

  end

  return encrypted_message

end

puts "Give me your message"
message = gets.chomp
puts "Give me the shift factor"
shift_number = gets.chomp.to_i
encrypted_message = caesar_cipher(message, shift_number).join('')
puts "The encrypted message is: #{encrypted_message}"
