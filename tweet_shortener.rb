def dictionary
  dictionary= {}
  dictionary=  {"hello"=> "hi", "to"=>"2", "two" =>"2", "too" =>"2",
              "for" => "4", "four" =>"4", "be" => "b", "you" => "u",
              "at" => "@", "and" => "&"}
end
def word_substituter(tweet)
    tweet.split.collect {|word| dictionary.keys.include?(word.downcase) ?
       word = dictionary[word.downcase] : word }.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.collect {|tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet
end
end

def shortened_tweet_truncator(tweet)
  truncate_tweet = " "
  if word_substituter(tweet)> 140
    truncate_tweet << word_substituter(tweet)[0..136] + ("...")
  else truncate_tweet << word_substituter(tweet)
  end 
  truncate_tweet
end 
    
