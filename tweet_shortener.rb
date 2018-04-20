def dictionary
  dictionary= {}
  dictionary=  {"hello"=> "hi", "to, two, too" =>"2",
              "for, four" =>"4", "be" => "b", "you" => "u",
              "at" => "@", "and" => "&"}
end
def word_substituter(tweet)
  tweet_array = []
  tweet_array= tweet.split.map do |word|
    if dictionary.keys.include?(word)
      new_word = dictionary [word]
    else word
  end
end
  puts tweet.array.join (" ")
end
