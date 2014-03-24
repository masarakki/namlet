require 'spec_helper'

describe Namlet do
  it { Namlet::VERSION.should_not be_nil }
  namlet(:dummy_class) do
    Struct.new(:name) do
      def ==(other) ; name == other.name ; end
    end
  end

  namlet(:user_a) { dummy_class.new(name: "aaaa") }
  namlet(:user_b) { dummy_class.new(name: "bbbb") }
  namlet(:user_c) { dummy_class.new(name: "aaaa") }

  it { expect(user_a).to be_a Namlet::Wrapper }
  it { expect(user_a).not_to eq user_b }
  it { expect(user_a).to eq user_c }
  describe :override_let do
    namlet(:user_b) { dummy_class.new(name: 'aaaa') }
    it { expect(user_a).to eq user_b }
  end
end
