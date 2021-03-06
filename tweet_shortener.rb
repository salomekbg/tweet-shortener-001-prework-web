def dictionary
  substituted_words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string_array = string.split
  key_array = dictionary.keys

  string_array.each_with_index do |word, index|
    key_array.each do |key|
      if key == word.downcase
        string_array[index] = dictionary[key]
      end
    end
  end
  string_array.join(' ')
end

=begin
  def word_substituter(string)
    string.split.map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end.join(' ')
  end
=end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
 if tweet.length > 140
   word_substituter(tweet)
 else
   tweet
 end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    "#{word_substituter(tweet)[0..136]}..."
  else
    tweet
  end
end
