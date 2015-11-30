module MarkovTextGenerator
  module Api
    class Model
      class Knowledge
        class RandomProxy
          def initialize
            @engine = Random
          end

          def generate(size)
            @engine.rand size
          end
        end

        class Entry
          def initialize(word, random_generator = RandomProxy.new)
            @current_word = word
            @random_generator = random_generator
            @next_words = []
          end

          def add_next_word(word)
            @next_words.push word
          end

          def predict_next_word
            @next_words[random_pick]
          end

          def to_s
            @current_word
          end

          private

          def random_pick
            @random_generator.generate @next_words.length
          end
        end
      end
    end
  end
end
