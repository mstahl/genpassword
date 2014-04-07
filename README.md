# Genpassword

Just generates passwords. You don't get any simpler than that.

## Installation

Add this line to your application's Gemfile:

    gem 'genpassword'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install genpassword

## Usage

To use genpassword, just type `genpassword`. The default is to use symbols,
letters, and numbers, but these can be switched off individually.

    Usage:
      genpassword generate

    Options:
      -l, [--letters], [--no-letters]
                                       # Default: true
      -n, [--numbers], [--no-numbers]
                                       # Default: true
      -s, [--symbols], [--no-symbols]
                                       # Default: true
      -c, [--chars=N]
                                       # Default: 12

    Description:
      `genpassword` or `genpassword generate` will generate you a random
      password using letters, numbers, and symbols. Turn these off with the
      `--no-letters`, `--no-numbers`, and `--no-symbols` options. Change
      the length of the generated password with the `-c` option.

## Contributing

1. Fork it ( http://github.com/<my-github-username>/genpassword/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
