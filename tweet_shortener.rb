def word_substituter(string)
  dictionary = {"hello"=>'hi',"to"=>'2',"two"=>'2',"too"=>'2',"for"=>'4',"four"=>'4',
                "be"=>'b',"you"=>'u',"at"=>'@',"and"=>'&'}
  string = string.split
  new_string = []
  string.each {|word|
    if word.capitalize == word
      if dictionary.include? (word.downcase)
        word = dictionary[word.downcase]
        word = word.capitalize
        new_string.push(word)
      else
        new_string.push(word)
      end
    else
      if dictionary.include?(word.downcase)
        new_string.push(dictionary[word])
      else
        new_string.push(word)
      end
    end}
  new_string = new_string.join(" ")
  return new_string
end

def bulk_tweet_shortener(array)
  array.each {|tweet|
  tweet = selective_tweet_shortener(tweet)!
  tweet = shortened_tweet_truncator(tweet)!
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
