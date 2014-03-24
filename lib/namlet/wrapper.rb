module Namlet
  class Wrapper < SimpleDelegator
    def initialize(name, actual)
      super(actual)
      @name = name
      @actual = actual
    end

    def inspect ; @name ; end
  end
end
