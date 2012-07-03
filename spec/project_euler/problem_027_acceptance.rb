require 'spec_helper'

require 'project_euler/problem_027'

module ProjectEuler
  describe Problem027 do
    it 'gives the correct answer' do
      Problem027.answer.must_equal -59231
    end
  end
end
