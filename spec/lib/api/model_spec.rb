require 'spec_helper'

describe MarkovTextGenerator::Api::Model do
  context '#creating' do
    before :each do
      @impl = described_class.new
    end

    it do
      @impl.train 'hello world, hello buddy, hi there, hello world'
      expect(@impl).to be_kind_of(described_class)
    end
  end
end
