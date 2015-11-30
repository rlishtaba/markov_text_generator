module MarkovTextGenerator
  module Api
    module Interface
      include MarkovTextGenerator::Api::Utils

      def train(sentence)
        fail NotImplementedError, sentence
      end

      def retrain(sentence)
        fail NotImplementedError, sentence
      end

      def generate(max_words)
        fail NotImplementedError, max_words
      end
    end
  end
end
