require_relative '../spec_helper'

require 'project_euler/problem_042'

describe ProjectEuler::Problem042 do
  describe '#word_value' do
    it 'returns the correct value for the word SKY' do
      ProjectEuler::Problem042.word_value('SKY').must_equal 55
    end
  end
end
