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
      definition1 = Definition.new({:definition => "definition of a word", :word_id => @word.id, :id => nil})
      definition2 = Definition.new({:definition => "definition of a word", :word_id => @word.id, :id => nil})
      expect(definition1).to(eq(definition2))
    end
  end

  describe('#save') do
    it('saves a definition into the @@definitions hash') do
      definition1 = Definition.new({:definition => "definition of a word", :word_id => @word.id, :id => nil})
      definition1.save
      definition2 = Definition.new({:definition => "definition of a different word", :word_id => @word.id, :id => nil})
      definition2.save
      expect(Definition.all).to(eq([definition1, definition2]))
    end
  end

  describe('.clear') do
    it('will clear the class variables "@@definitions" and "@@total_rows" to clear all definitions') do
      definition1 = Definition.new({:definition => "definition of a word", :word_id => @word.id, :id => nil})
      definition1.save
      definition2 = Definition.new({:definition => "definition of a different word", :word_id => @word.id, :id => nil})
      definition2.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a definition by its id') do
      definition1 = Definition.new({:definition => "definition of a word", :word_id => @word.id, :id => nil})
      definition1.save
      definition2 = Definition.new({:definition => "definition of a different word", :word_id => @word.id, :id => nil})
      definition2.save
      expect(Definition.find(definition1.id)).to(eq(definition1))
    end
  end

  describe('#update') do
    it("updates a definition by id") do
      definition1 = Definition.new({:definition => "definition of a word", :word_id => @word.id, :id => nil})
      definition1.save
      definition1.update("different definition", @word.id)
      expect(definition1.definition).to(eq("different definition"))
    end
  end


end