require 'spec_helper'

describe MarkovTextGenerator::Api::Model::Knowledge do
  include MarkovTextGenerator::Api::Utils
  context '#creating' do
    before :each do
      @impl = described_class.new
    end

    it do
      list = make_linked_list
      train_data = %w(hello world hello world)
      train_data.each { |word| list.push word }
      @impl.train list
      expect(@impl.predict_next_word('hello')).to eq('world')
    end
  end
end
