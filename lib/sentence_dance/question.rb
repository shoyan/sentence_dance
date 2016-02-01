module SentenceDance
  class Question < Array
    def initialize(sentence, translate)
      super [sentence, translate]
    end

    def second
      self[1]
    end

    def check_answer(str)
      sentence == str
    end

    def sentence
      s = self.first
      def s.dance
        self.split(' ').shuffle.join(' ')
      end
      s
    end

    alias_method :translate, :second
  end
end
