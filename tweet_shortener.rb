def word_substituter(string)
  dictionary = {"hello"=>'hi',"to"=>'2',"two"=>'2',"too"=>'2',"for"=>'4',"four"=>'4',
  "be"=>'b',"you"=>'u',"at"=>'@',"and"=>'&'}
  new_string = ""
  string.each {|word|
  if dictionary.include? (word)
    new_string += (dictionary[word] + " ")
  else
    new_string += (word + " ")
  end}
  new_string.remove((new_string.length) - 1)
  return new_string
end

def bulk_tweet_shortener(array)
  array.each {|tweet|
  tweet = selective_tweet_shortener(tweet)
  tweet = shortened_tweet_truncator(tweet)
  puts tweet}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    tweet
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return (tweet[0..136] + "...")
  else
    return tweet
  end
end
