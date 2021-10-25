class Sentence
  attr_reader :text
  attr_accessor :words_count
 
  def initialize(text)
    @text = text
  end
 
  def count_words
    @words_count = text.split(" ").size
  end
end
 
sentence = Sentence.new("Three words sentence")
sentence.count_words
#=> 3
sentence.words_count
#=> nil
