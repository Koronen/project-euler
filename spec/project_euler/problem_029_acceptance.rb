require 'spec_helper'

require 'project_euler/problem_029'

module ProjectEuler
  describe Problem029 do
    it 'gives the correct answer' do
      Problem029.answer.must_equal 9183
    end
  end
end
