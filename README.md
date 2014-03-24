# Namlet

Namlet means "named-let" that replaces output of expectation to variable name.

## Output

let:

```ruby
let(:user_a) { User.new }
let(:user_b) { User.new }

it { expect(user_a).to be_friend_of user_b }
=> should be friend of #<User id: 2, ...>
```

namlet:

```ruby
let(:user_a) { User.new }
let(:user_b) { User.new }

it { expect(user_a).to be_friend_of user_b }
=> should be friend of user_b
```

## Installation

Add this line to your application's Gemfile:

    gem 'namlet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install namlet

## Contributing

1. Fork it ( http://github.com/<my-github-username>/namlet/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
