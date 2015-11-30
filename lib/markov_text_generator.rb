$LOAD_PATH.unshift File.expand_path('../lib', File.dirname(__FILE__))
require 'markov_text_generator/version'
require 'English'
require 'pathname'
require 'logger'

module MarkovTextGenerator
  autoload :Api, 'markov_text_generator/api'

  class << self

    # @example
    #
    #  model = MarkovTextGenerator.new
    #
    #  model.train 'hello world, hello buddy, hello world'
    #
    #  model.predict_next_word_for 'hello'
    #
    #  #=> 'world' # Most likely
    #
    def new
      Api::Model.new
    end

    def logger
      @logger ||= Logger.new $stdout
    end

    def root
      @root ||= Pathname File.expand_path('../../', __FILE__)
    end
  end
end
