require_relative '../../chapter1_arrays_strings/1.1_is_unique.rb'

describe '#is_unique' do
  context 'where there is an empty string' do
    it 'returns false' do
      expect(is_unique?('')).to eq false
    end
  end

  context 'when there is a string' do
    it "returns true for input string 'abc'" do
      expect(is_unique?('abc')).to eq true
    end

    it "returns false for input string 'abca'" do
      expect(is_unique?('abca')).to eq false
    end

    it "returns false for input string 'aaa'" do
      expect(is_unique?('aaa')).to eq false
    end

    it "returns true for input 123" do
      expect(is_unique?('123')).to eq true
    end

    it "returns false for input 111" do
      expect(is_unique?('111')).to eq false
    end
  end
end
