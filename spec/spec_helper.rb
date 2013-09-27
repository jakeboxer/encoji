require 'encoji'

module Helpers
  def emoji(name)
    @emoji ||= {
      :smile    => "\u{1f604}",
      :thumbsup => "\u{1f44d}",
      :pound    => "\u{1f4b7}",
      :one      => "\u{0031 20e3}",
      :nine     => "\u{0039 20e3}"
    }

    @emoji[name]
  end
end

RSpec.configure do |c|
  c.include(Helpers)
end
