require "namlet/version"

require "rspec"
require "namlet/wrapper"
require "namlet/memorized_helpers"
require "namlet/expectation"

module Namlet
  ::RSpec::Core::ExampleGroup.send(:include, Namlet::MemorizedHelpers)
  ::RSpec::Expectations::ExpectationTarget.send(:prepend, Namlet::Expectation)
  ::RSpec::Mocks::TargetBase.send(:prepend, Namlet::Expectation)
end
