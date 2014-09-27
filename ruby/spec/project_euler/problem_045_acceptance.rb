require 'spec_helper'

require 'project_euler/problem_045'

module ProjectEuler
  describe Problem045 do
    it 'gives the correct answer' do
      Problem045.answer.must_equal 1533776805
    end
  end
end
