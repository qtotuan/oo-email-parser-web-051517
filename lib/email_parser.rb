# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser
  attr_reader :string
  def initialize(string)
    @string = string
  end

  def parse
    string.split(/[\s,]+/).map! { |email| email.strip }.uniq
    # binding.pry
  end
end
