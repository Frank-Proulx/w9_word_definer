require 'rspec'
require 'word'
require 'pry'

describe('Word') do

  before(:each) do
    Word.clear
  end
  
  describe('.all') do
    it('returns an empty array when there are no words') do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word into the @@words hash') do
      word1 = Word.new({:word => "cats", :id => nil})
      word1.save
      word2 = Word.new({:word => "dogs", :id => nil})
      word2.save
      expect(Word.all).to(eq([word1, word2]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word1 = Word.new({:word => "cats", :id => nil})
      word2 = Word.new({:word => "cats", :id => nil})
      expect(word1).to(eq(word2))
    end
  end

  describe('.clear') do
    it('will clear the class variables "@@words" and "@@total_rows" to clear all words') do
      word1 = Word.new({:word => "cats", :id => nil})
      word1.save
      word2 = Word.new({:word => "dogs", :id => nil})
      word2.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a word by its id') do
      word1 = Word.new({:word => "cats", :id => nil})
      word1.save
      word2 = Word.new({:word => "dogs", :id => nil})
      word2.save
      expect(Word.find(word1.id)).to(eq(word1))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word1 = Word.new({:word => "cats", :id => nil})
      word1.save
      word1.update("dogs")
      expect(word1.word).to(eq("dogs"))
    end
  end

  describe('#delete') do
    it("deletes an word by id") do
      word1 = Word.new({:word => "cats", :id => nil})
      word1.save
      word2 = Word.new({:word => "dogs", :id => nil})
      word2.save
      word1.delete
      expect(Word.all).to(eq([word2]))
    end
  end

end