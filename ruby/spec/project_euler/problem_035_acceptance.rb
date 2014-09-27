require 'spec_helper'

require 'project_euler/problem_035'

module ProjectEuler
  describe Problem035 do
    it 'gives the correct answer' do
      Problem035.answer.must_equal 55
    end
  end
end
