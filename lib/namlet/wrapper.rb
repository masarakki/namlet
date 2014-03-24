require 'forwardable'

module Namlet
  class Wrapper < SimpleDelegator
    extend Forwardable
    def initialize(name, actual)
      super(actual)
      @name = name
      @actual = actual
    end

    def_delegators :@actual, :class, :is_a?, :kind_of?, :nil?
    def inspect ; @name ; end
  end
end
