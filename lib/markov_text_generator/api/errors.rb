module MarkovTextGenerator
  module Api
    module Errors
      Error = Class.new(RuntimeError)
      HaveNoIdeaError = Class.new(Error)
      UnknownLinkedListType = Class.new(Error)
    end
  end
end
