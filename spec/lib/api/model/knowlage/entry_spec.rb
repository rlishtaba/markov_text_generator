require 'spec_helper'

describe MarkovTextGenerator::Api::Model::Knowledge::Entry do
  class MyPseudoRandom
    def initialize(index)
      @index = index
    end

    def generate(_number)
      @index
    end
  end

  context '#when testing random pick' do
    it do
      pseudo_random = MyPseudoRandom.new 0
      impl = described_class.new 'hello', pseudo_random
      impl.add_next_word 'foo'
      impl.add_next_word 'bar'
      expect(impl.predict_next_word).to eq('foo')
    end

    it do
      pseudo_random = MyPseudoRandom.new 1
      impl = described_class.new 'hello', pseudo_random
      impl.add_next_word 'foo'
      impl.add_next_word 'bar'
      expect(impl.predict_next_word).to eq('bar')
    end
  end
end
