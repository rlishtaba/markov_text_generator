module MarkovTextGenerator
  module Api
    module Utils
      module DataStructures
        module LinkedList
          class Node
            attr_accessor :pred, :succ
            attr_reader :data

            def initialize(data, pred = nil, succ = nil)
              @data = data
              @pred = pred
              @succ = succ
            end
          end
        end
      end
    end
  end
end
