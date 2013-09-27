# Encoji

Convert real Unicode emoji to and from the colon-separated emoji-cheat-sheet form.

## Installation

Add this line to your application's Gemfile:

    gem 'encoji'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install encoji

## Usage

``` ruby
Encoji.to_cheat_sheet("Looks good \u{1f44d}")
# => "Looks good :+1:"

Encoji.to_emoji("Looks good :+1:")
# => "Looks good \u{1f44d}"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
