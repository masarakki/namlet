module Namlet
  module Expectation
    def initialize(target)
      target = target.instance_variable_get(:@actual) if Namlet::Wrapper === target
      super(target)
    end
  end
end
