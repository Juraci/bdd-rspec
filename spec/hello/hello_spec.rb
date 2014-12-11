require 'spec_helper'
describe 'Hello' do
  before :each do
    @hello = Hello.new
  end

  describe '#say_hello' do
    it 'returns Hello World' do
      expect(@hello.say_hello).to eq('Hello World')
    end
  end

  describe '#say_hello_to' do
    context 'When Juraci is passed as an argument' do
      it 'returns Hello Juraci!' do
        expect(@hello.say_hello_to("Juraci")).to eq("Hello Juraci!")
      end
    end

    context 'When Jurassic Park is passed as an argument'  do
      it 'returns Hello Jurassic Park!' do
        expect(@hello.say_hello_to("Jurassic Park")).to eq("Hello Jurassic Park!")
      end
    end
  end
end
