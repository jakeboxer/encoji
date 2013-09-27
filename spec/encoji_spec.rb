require File.expand_path('../spec_helper', __FILE__)

describe Encoji do
  describe 'to_cheat_sheet' do
    it 'converts a smile emoji to cheat sheet form' do
      expect(Encoji.to_cheat_sheet(emoji(:smile))).to eql(':smile:')
    end

    it 'converts a thumbsup emoji to cheat sheet form' do
      expect(Encoji.to_cheat_sheet(emoji(:thumbsup))).to eql(':thumbsup:')
    end
  end

  describe 'to_emoji' do
    it 'converts a cheat-sheet-only string to emoji form' do
      expect(Encoji.to_emoji(':smile:')).to eql(emoji(:smile))
    end
  end
end
