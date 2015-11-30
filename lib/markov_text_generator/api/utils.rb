module MarkovTextGenerator
  module Api
    module Utils
      autoload :DataStructures, 'markov_text_generator/api/utils/data_structures'

      def make_linked_list
        DataStructures::LinkedList.new
      end
    end
  end
end
