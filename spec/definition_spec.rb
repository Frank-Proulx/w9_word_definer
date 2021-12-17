require 'rspec'
require 'definition'
require 'word'
require 'pry'

describe('Definition') do

  before(:each) do
    @word = Word.new({:word => "cats", :id => nil})
  end
  
  describe('.all') do
    it('returns an empty array when there are no definitions') do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another definition") do
      definition1 = Definition.new({:word => "cats", :word_id => @word.id, :id => nil})
      definition2 = Definition.new({:word => "cats", :word_id => @word.id, :id => nil})
      expect(definition1).to(eq(definition2))
    end
  end
end