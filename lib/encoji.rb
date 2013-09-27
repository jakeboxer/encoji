require "encoji/version"

module Encoji
  extend self

  ATTRIBUTES = [
    # Codepoints | Cheat sheet codes | Description
    [ "\u{1F604}", [:smile],           "SMILING FACE WITH OPEN MOUTH AND SMILING EYES"],
    [ "\u{1F44D}", [:thumbsup, :"+1"], "THUMBS UP SIGN"]
  ]

  def to_cheat_sheet(text)
    result = String.new(text)

    ATTRIBUTES.each do |codepoints, cheat_sheet_codes, description|
      result.gsub!(codepoints, ":#{cheat_sheet_codes.first.to_s}:")
    end

    result
  end

  def to_emoji(text)
    "\u{1f604}"
  end
end
