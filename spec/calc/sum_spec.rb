require 'spec_helper'

describe 'Sum' do
  describe '#exec' do
    context 'when it receives 1 + 23' do
      it 'returns 24' do
        sum = Calc::Sum.new
        expect(sum.exec("1 + 23")).to eq(24)
      end
    end

    context 'when it receives 1 + -1' do
      it 'returns 0'
    end

    context 'when it receives 1 + -1 + 15' do
      it 'returns 15'
    end

    context 'when it receives 1 + -1 + -15' do
      it 'returns -15'
    end
  end
end
