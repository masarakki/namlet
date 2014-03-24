module Namlet
  module MemorizedHelpers
    def self.included(mod)
      mod.extend(ClassMethods)
    end

    module ClassMethods
      def namlet(name, &block)
        let("___wrapped_#{name}", &block)
        let(name) { Namlet::Wrapper.new(name, send("___wrapped_#{name}")) }
      end
      def namelet!(name, &block)
        let!("___wrapped_#{name}", &block)
        let!(name) { Namlet::Wrapper.new(name, send("___wrapped_#{name}")) }
      end
    end
  end
end
