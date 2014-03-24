module Namlet
  module MemorizedHelpers

    def self.included(mod)
      mod.extend(ClassMethods)
    end

    module ClassMethods
      def let(name, &block)
        super("___wrapped_#{name}", &block)
        super(name) { Namlet::Wrapper.new(name, send("___wrapped_#{name}")) }
      end
      def let!(name, &block)
        super("___wrapped_#{name}", &block)
        super(name) { Namlet::Wrapper.new(name, send("___wrapped_#{name}")) }
      end
    end
  end
end
