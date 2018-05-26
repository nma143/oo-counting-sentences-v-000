require 'pry'

class String

  def sentence?

    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    @parts = self.split(/[.!?](\s|\z)/)
    @count = 0
    @parts.each do |part|
      if part != " "
        @count = @count + 1
      end
    end
    #binding.pry
    @count
  end
end
