require_relative '../spec_helper'

require 'project_euler/problem_042'

module ProjectEuler
  describe Problem042 do
    describe '#word_value' do
      it 'works' do
        Problem042.word_value('SKY').must_equal 55
      end
    end
  end
end
