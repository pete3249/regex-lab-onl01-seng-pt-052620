require 'pry'

def starts_with_a_vowel?(word)
  !!word.match(/^[aeiouAEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing*/)
end

def words_five_letters_long(text)
  text.split(" ").grep(/\A\w{5}\z/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!text.match(/\A[A-Z]/) && !!text.match(/[!.?]\z/)
end

def valid_phone_number?(phone)
  !!phone.match(/\A\d{10}\z/)||(/(\D\d{3}\D)\d{3}\D\d{4}/)||(/\d{3}\s\d{3}\s\d{4})/||(/(\D\d{3}\D)\d{7}/))
end
