module SentenceDance
  module Method
    def dictionary
      SentenceDance::Dictionary.instance
    end

    def question
      dict = dictionary.list.sample
      SentenceDance::Question.new dict[0], dict[1]
    end
  end
end
