require 'spec_helper'

require 'project_euler/problem_005'

module ProjectEuler
  describe Problem005 do
    it 'gives the correct answer' do
      Problem005.answer.must_equal 232792560
    end
  end
end