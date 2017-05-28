require 'pry'

def dictionary(word)
  word_dictionary = {
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
  if word_dictionary.keys.include?(word.downcase)
    word_dictionary[word.downcase]
  else
    word
  end
end


def word_substituter(tweet)
  split_tweet = tweet.split(" ")
  short_tweet = []

  split_tweet.each { |word| short_tweet << dictionary(word) }
  short_tweet.join(" ")
end

def bulk_tweet_shortener(bulk_tweets_array)
  bulk_tweets_array.each { |each_tweet| puts word_substituter(each_tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)

  if tweet.length < 140
    tweet
  else
  truncated_tweet = ""

  count = 0
  until truncated_tweet.length == 137
    truncated_tweet << tweet[count]
    count += 1
  end
  truncated_tweet + "..."

  end
  
end
