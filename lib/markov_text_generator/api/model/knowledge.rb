module MarkovTextGenerator
  module Api
    class Model
      class Knowledge
        autoload :Entry, 'markov_text_generator/api/model/knowledge/entry'
        autoload :Registry, 'markov_text_generator/api/model/knowledge/registry'
        include MarkovTextGenerator::Api::Utils

        def initialize(registry = Registry.new)
          @registry = registry
        end

        def train(list)
          list.each do |node|
            entry = add_new_entry node.data
            entry.add_next_word node.succ.data if node.succ
          end
        end

        def predict_next_word(key)
          @registry[key].predict_next_word
        end

        def clear!
          @registry.clear!
        end

        private

        def add_new_entry(data)
          @registry.add_new_entry data
        end
      end
    end
  end
end
