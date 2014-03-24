module Namlet
  module MemorizedHelpers

    def self.included(mod)
      mod.extend(ClassMethods)
    end

    module ClassMethods
      def let(name, &block)
        super("___wrapped_#{name}".to_sym, &block)
        super(name) { Namlet::Wrapper.new(name, send("___wrapped_#{name}".to_sym)) }
      end
    end
  end
end
