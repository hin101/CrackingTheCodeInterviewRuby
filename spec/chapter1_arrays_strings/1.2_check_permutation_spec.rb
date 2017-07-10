require_relative '../../chapter1_arrays_strings/1.2_check_permutation.rb'

describe "#permutation" do
  context 'when there is whitespace at the beginning and end of the string' do
    it 'should return false when there is whitespace in the string' do
      expect(permutation?("abc", "abc       ")).to eq false
    end
  end

  context 'when string of different lengths are passed in' do
    it 'should return false when strings are different lengths' do
      expect(permutation?("abc", "abcd")).to eq false
    end
  end

  context 'when strings of the same lengths are passed in' do
    it "returns true for 'abc' and random permutation" do
      original = 'abc'
      perm = original.split('').shuffle.join
      expect(permutation?(original, perm)).to eq true
    end
  end
end
