require 'spec_helper'

require 'project_euler/problem_001'

module ProjectEuler
  describe Problem001 do
    it 'gives the correct answer' do
      Problem001.answer.must_equal 233168
    end
  end
end
