require 'spec_helper'

describe Namlet do
  it { Namlet::VERSION.should_not be_nil }
  let(:dummy_class) do
    Struct.new(:name) do
      def ==(other) ; name == other.name ; end
    end
  end
  let(:user_a) { dummy_class.new(name: "aaaa") }
  let(:user_b) { dummy_class.new(name: "bbbb") }
  let(:user_c) { dummy_class.new(name: "aaaa") }
  let(:expected_hash) { {a: 1} }
  let(:let_nil) { nil }

  it { expect(expected_hash).to be_a Hash }
  it { expect({a: 1}).to eq expected_hash }

  it { expect(user_a).not_to eq user_b }
  it { expect(user_a).to eq user_c }

  it { expect(let_nil).to be_nil }

  describe :subject do
    subject { expected_hash }
    it { expect(subject).to eq a: 1 }
  end

  describe :nested do
    let(:hash_of_users) { {a: user_a, b: user_b } }
    it { expect({a: user_a, b: user_b}).to eq hash_of_users }
  end

  describe :override_let do
    let(:user_b) { dummy_class.new(name: 'aaaa') }
    it { expect(user_a).to eq user_b }
  end

  describe :expect do
    it "expect target actual instance" do
      expect(user_a).to receive(:size)
      user_a.instance_variable_get(:@actual).size
    end
  end
end
