module MarkovTextGenerator
  module Api
    class Model
      class Knowledge
        class Registry
          def initialize
            @registry = {}
          end

          def add_new_entry(key)
            @registry[key] ||= Entry.new key
            @registry[key]
          end

          def clear!
            @registry.clear
          end

          def [](key)
            @registry.fetch key
          end
        end
      end
    end
  end
end
