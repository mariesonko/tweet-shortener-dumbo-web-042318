def dictionary
  dictionary= {}
  dictionary=  {"hello"=> "hi", "to, two, too" =>"2",
              "for, four" =>"4", "be" => "b", "you" => "u",
              "at" => "@", "and" => "&"}
end
def word_substituter(tweet)
    tweet.split.collect{|word| dictionary.keys.include ? (word.downcase) ? word= dictionary[word.downcase] : word }. join(" ")
end
end
