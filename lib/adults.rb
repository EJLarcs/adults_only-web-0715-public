require_relative 'dog.rb'
require_relative 'person.rb'
require 'pry'

class Adults

  include Enumerable

  attr_accessor :multiple_classes

  def initialize(*multiple_classes)
    @multiple_classes = multiple_classes
  end

  def each
    @multiple_classes.map { |object|
          # binding.pry
    if object.class == Person && object.age > 17
      yield object
    end
    }
  end

end
