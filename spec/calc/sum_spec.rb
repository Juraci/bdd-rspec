require 'spec_helper'

describe 'Sum' do
  let(:sum) { Calc::Sum.new }

  describe '#exec' do
    context 'when it receives 1 + 23' do
      it 'returns 24' do
        expect(sum.exec("1 + 23")).to eq(24)
      end
    end

    context 'when it receives 1 + -1' do
      it 'returns 0' do
        expect(sum.exec("1 + -1")).to eq(0)
      end
    end

    context 'when it receives 1 + -1 + 15' do
      it 'returns 15' do
        expect(sum.exec("1 + -1 + 15")).to eq(15)
      end
    end

    context 'when it receives 1 + -1 + -15' do
      it 'returns -15' do
        expect(sum.exec("1 + -1 + -15")).to eq(-15)
      end
    end
  end
end
