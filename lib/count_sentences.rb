require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    word_array = self.split.collect do |word|
      word.tr_s('.','.').tr_s('!','!').tr_s('?','?')
    end
    sentence = word_array.join
    sentence_count = sentence.count('.') + sentence.count('?') + sentence.count('!')
  end
end