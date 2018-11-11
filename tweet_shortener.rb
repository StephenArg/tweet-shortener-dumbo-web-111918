def word_substituter(word)
  dictionary = {"hello"=>'hi',"to"=>'2',"two"=>'2',"too"=>'2',"for"=>'4',"four"=>'4',
  "be"=>'b',"you"=>'u',"at"=>'@',"and"=>'&'}
  if dictionary.include? (word)
    return dictionary[word]
  end
end

def bulk_tweet_shortener(array)
  array.each {|tweet|
  tweet = selective_tweet_shortener(tweet)
  tweet = shortened_tweet_truncator(tweet)
  puts tweet}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet.each {|word|
    word = word_substituter(word)}
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
