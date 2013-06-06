require_relative '../spec_helper'

require 'project_euler/problem_034'

module ProjectEuler
  describe Problem034 do
    it 'gives the correct answer' do
      Problem034.answer.must_equal 40730
    end
  end
end
