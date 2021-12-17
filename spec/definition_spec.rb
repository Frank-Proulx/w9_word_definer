require 'rspec'
require 'definition'
require 'word'
require 'pry'

describe('Definition') do
  
  describe('.all') do
    it('returns an empty array when there are no definitions') do
      expect(Definition.all).to(eq([]))
    end
  end

end