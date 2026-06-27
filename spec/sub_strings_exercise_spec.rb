require 'spec_helper'
require_relative '../exercise/sub_strings_exercise'

RSpec.describe 'Sub Strings Exercise' do

  describe 'Given a string and a dictionary of words' do
    let(:expected_output) { { 'hello' => 1, 'world' => 1 } }
    it 'returns a hash with the number of times each word appears in the string' do
      string = 'hello world'
      dictionary = ['hello', 'world']
      expect(sub_strings(string, dictionary)).to eq(expected_output)
    end
  end

  describe 'Given a string and a dictionary of words' do
    let(:expected_output) { { 'he' => 1, 'll' => 1, 'o' => 2, 'wor' => 1, 'ld' => 1 } }
    xit 'returns a hash with the number of times each part of words appears in the string' do
      string = 'hello world'
      dictionary = ['he', 'll', 'o', 'wor', 'ld']
      expect(sub_strings(string, dictionary)).to eq(expected_output)
    end
  end

  describe 'Given a string and a dictionary of words' do
    let(:expected_output) { { 'he' => 1, 'll' => 1, 'o' => 2, 'wor' => 1, 'ld' => 1, 'hello' => 1, 'world' => 1 } }
    xit 'returns a hash with the number of times each part of words appears multiple times in the string' do
      string = 'hello world'
      dictionary = ['he', 'll', 'o', 'wor', 'ld', 'hello', 'world']
      expect(sub_strings(string, dictionary)).to eq(expected_output)
    end
  end

  describe 'Given a string and a dictionary of words' do
    let(:expected_output) { { "below" => 1, "low" => 1 } }
    xit 'returns a hash with the number of times each part of words appears in the string' do
      string = "below"
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(sub_strings(string, dictionary)).to eq(expected_output)
    end
  end

  describe 'Given a string and a dictionary of words' do
    let(:expected_output) { { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 } }
    xit 'returns a hash with the number of times each part of words appears in the string' do
      string = "Howdy partner, sit down! How's it going?"
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(sub_strings(string, dictionary)).to eq(expected_output)
    end
  end
end