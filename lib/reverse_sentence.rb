# A method to reverse the words in a sentence, in place.
require "pry"

def reverse_sentence(my_sentence)
  return if my_sentence == nil

  new_sentence = []
  index = 0
  while index < my_sentence.length
    new_sentence << my_sentence[index]

    index += 1
  end

  start = my_sentence.length - 1
  ending = 0
  current_word = ""
  space = ""

  while start >= 0

    if start == 0
      current_word = new_sentence[start] + current_word
      begining = ending + current_word.length

      my_sentence[ending..begining] = current_word

    elsif new_sentence[start] != " "
      current_word = new_sentence[start] + current_word

    elsif new_sentence[start] == " "
      space = " "
      begining = ending + current_word.length
      my_sentence[ending..begining] = current_word + space

      ending += current_word.length + space.length
      current_word = ""
    end

    start -= 1
  end

  return my_sentence
end
