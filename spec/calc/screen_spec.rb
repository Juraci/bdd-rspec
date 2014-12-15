require 'spec_helper'

describe 'Screen' do
  before :each do
     @screen = Calc::Screen.new
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

  describe '#sum' do
    context 'when typing 1 + 23' do
      it 'returns 24' do
        @screen.type(1)
        @screen.type('+')
        @screen.type(2)
        @screen.type(3)
        @screen.type('=')
        expect(@screen.screen).to eq(24)
      end
    end

    context 'when typing 1 + -1' do
      it 'returns 0'
    end

    context 'when typing 1 + -1 + 15' do
      it 'returns 15'
    end

    context 'when typing 1 + -1 + -15' do
      it 'returns -15'
    end

    context 'when the result causes an integer overflow' do
      it 'raises an exception'
    end

  end
































end
