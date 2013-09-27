require File.expand_path('../spec_helper', __FILE__)

describe Encoji do
  describe 'to_cheat_sheet' do
    it 'converts a smile emoji to cheat sheet form' do
      expect(Encoji.to_cheat_sheet(emoji(:smile))).to eql(':smile:')
    end

    it 'converts a thumbsup emoji to cheat sheet form' do
      expect(Encoji.to_cheat_sheet(emoji(:thumbsup))).to eql(':thumbsup:')
    end

    it "converts multi-codepoint emoji to cheat sheet form" do
      text = "i like #{emoji(:pound)}hashtags and #{emoji(:one)}direction they are the #{emoji(:pound)}#{emoji(:one)} band. end with #{emoji(:nine)}"
      expect(Encoji.to_cheat_sheet(text)).to eql('i like :pound:hashtags and :one:direction they are the :pound::one: band. end with :nine:')
    end

    it "preserves ASCII characters that match the first codepoint in multi-codepoint emoji" do
      text = "i like #hashtags and 1direction they are the #1 band. end with 9"
      expect(Encoji.to_cheat_sheet(text)).to eql(text)
    end
  end

  describe 'to_emoji' do
    it 'converts a cheat-sheet smile to emoji form' do
      expect(Encoji.to_emoji(':smile:')).to eql(emoji(:smile))
    end

    it 'converts a cheat-sheet thumbsup to emoji form' do
      expect(Encoji.to_emoji(':thumbsup:')).to eql(emoji(:thumbsup))
    end

    it 'converts to a multi-codepoint emoji' do
      expect(Encoji.to_emoji(':one:')).to eql(emoji(:one))
    end
  end
end
