require 'encoji'

module Helpers
  def emoji(name)
    @emoji ||= {
      :smile => "\u{1f604}"
    }

    @emoji[name]
  end
end

RSpec.configure do |c|
  c.include(Helpers)
end
