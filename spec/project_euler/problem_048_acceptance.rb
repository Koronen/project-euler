require_relative '../spec_helper'

require 'project_euler/problem_048'

module ProjectEuler
  describe Problem048 do
    it 'gives the correct answer' do
      Problem048.answer.must_equal 9110846700
    end
  end
end
