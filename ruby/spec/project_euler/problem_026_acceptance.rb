require_relative '../spec_helper'

require 'project_euler/problem_026'

module ProjectEuler
  describe Problem026 do
    it 'gives the correct answer' do
      Problem026.answer.must_equal 983
    end
  end
end
