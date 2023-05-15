require 'rails_helper'

RSpec.describe BruteForceStrategy do
  describe "#results" do
    it 'returns the estimated value of pi in the :pi key' do
      expect(described_class.new.results[:pi]).to be_a(Float)
    end

    it 'returns the accuracy of the pi estimate in the :accuracy key' do
      expect(described_class.new.results[:accuracy]).to be_a(Float)
    end
  end
end
