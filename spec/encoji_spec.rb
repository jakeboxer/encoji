require File.expand_path('../spec_helper', __FILE__)

describe Encoji do
  describe 'to_cheat_sheet' do
    it 'converts an emoji-only string to cheat sheet form' do
      expect(Encoji.to_cheat_sheet(emoji(:smile))).to eql(':smile:')
    end
  end

  describe 'to_emoji' do
    it 'converts a cheat-sheet-only string to emoji form' do
      expect(Encoji.to_emoji(':smile:')).to eql(emoji(:smile))
    end
  end
end
