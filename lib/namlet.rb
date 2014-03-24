require "namlet/version"

require "rspec"
require "namlet/wrapper"
require "namlet/memorized_helpers"

module Namlet
  ::RSpec::Core::ExampleGroup.send(:include, Namlet::MemorizedHelpers)
end
