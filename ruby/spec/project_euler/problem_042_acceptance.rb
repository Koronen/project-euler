require_relative '../spec_helper'

require 'project_euler/problem_042'

module ProjectEuler
  describe Problem042 do
    it 'gives the correct answer' do
      Problem042.answer.must_equal 162
    end
  end
end
