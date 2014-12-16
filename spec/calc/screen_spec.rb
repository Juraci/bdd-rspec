require 'spec_helper'

describe 'Screen' do
  before :each do
    @fake_sum  = double('fake_sum')
    allow(@fake_sum).to receive(:exec).and_return("24")
    @screen = Calc::Screen.new(@fake_sum)
  end

  describe '#screen' do
    it 'starts with 0' do
      expect(@screen.screen).to eq(0)
    end

    context 'when typing a digit' do
      it 'should return the typed digit' do
        @screen.type(2)
        expect(@screen.screen).to eq(2)
      end
    end

    context 'when typing multiple digits' do
      it 'should concatenate the digits' do
        @screen.type(2)
        @screen.type(3)
        expect(@screen.screen).to eq(23)
      end
    end
  end

  describe '#type' do
    context 'when typing addition operations' do
      it 'delegates the addition to Sum' do
        @screen.type(1)
        @screen.type('+')
        @screen.type(2)
        @screen.type(3)
        @screen.type('=')

        expect(@fake_sum).to receive(:exec).with("01+23")

        @screen.screen
      end
    end
  end
end
