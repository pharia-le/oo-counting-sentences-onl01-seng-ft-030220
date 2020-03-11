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
    return 0 if self.length == 0 
    
    count = 0
    i = 0
    marks = [".", "?", "!"]

    while i < self.length-1
      if marks.include?(self[i]) && (marks.include?(self[i]) != marks.include?(self[i+1]))
        count+=1
      end
      i+=1
    end
    count + 1
  end
  
end