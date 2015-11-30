require 'spec_helper'

describe MarkovTextGenerator do
  context '#stub' do
    it do
      expect(described_class.constants).to include(:VERSION)
    end
  end
end
