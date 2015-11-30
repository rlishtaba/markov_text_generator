module MarkovTextGenerator
  module Api
    module Utils
      module DataStructures
        module LinkedList
          autoload :Node, 'markov_text_generator/api/utils/data_structures/linked_list/node'
          autoload :Impl, 'markov_text_generator/api/utils/data_structures/linked_list/impl'

          def self.new
            Impl.new
          end
        end
      end
    end
  end
end
