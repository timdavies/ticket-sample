require 'rails_helper'

RSpec.describe FormsHelper, type: :helper do
  describe '#translated_options_from_enum' do
    let(:prefix) { 'foo' }

    let(:values) do
      { bar: 0 }
    end

    it 'should return an array' do
      output = helper.translated_options_from_enum(values, prefix)
      expect(output).to be_kind_of(Array)
    end

    it 'should translate the enum value' do
      expect(I18n).to receive(:t).with('foo.bar')
      helper.translated_options_from_enum(values, prefix).first
    end
  end
end
