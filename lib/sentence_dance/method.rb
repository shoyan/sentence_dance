module SentenceDance
  module Method
    def dictionary
      SentenceDance::Dictionary.instance
    end

    def question
      sentence, translated = dictionary.list.sample
      SentenceDance::Question.new sentence, translated
    end
  end
end
