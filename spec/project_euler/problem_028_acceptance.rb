require 'spec_helper'

require 'project_euler/problem_028'

module ProjectEuler
  describe Problem028 do
    it 'gives the correct answer' do
      Problem028.answer.must_equal 669171001
    end
  end
end
