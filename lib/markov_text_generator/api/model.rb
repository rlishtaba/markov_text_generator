module MarkovTextGenerator
  module Api
    class Model
      include MarkovTextGenerator::Api::Interface
      autoload :Knowledge, 'markov_text_generator/api/model/knowledge'

      CLEAN = /\W+/

      def initialize(knowledge = Knowledge.new)
        @knowledge = knowledge
      end

      def train(sentence)
        words = prepare_string(sentence).split
        list = process_data words
        @knowledge.train list
      end

      def retrain(sentence)
        become_silly!
        train sentence
      end

      def predict_next_word_for(key)
        @knowledge.predict_next_word key
      end

      def become_silly!
        @knowledge.clear!
      end

      private

      def process_data(collection)
        list = make_linked_list
        collection.each_with_object(list) do |item, object|
          object.push item
        end
      end

      def prepare_string(sentence)
        sentence.gsub CLEAN, ' '
      end
    end
  end
end
