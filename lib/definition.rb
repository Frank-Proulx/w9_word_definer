class Definition
  attr_accessor :id, :definition, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(attributes)
    @definition = attributes[:definition]
    @word_id = attributes[:word_id]
    @id = attributes[:id] || @@total_rows += 1
  end

  def self.all
    @@definitions.values
  end

  def ==(definition_to_compare)
    (self.definition == definition_to_compare.definition) && (self.word_id == definition_to_compare.word_id)
  end

  def save
    @@definitions[self.id] = Definition.new({:definition => self.definition, :word_id => self.word_id, :id => self.id})
  end
end