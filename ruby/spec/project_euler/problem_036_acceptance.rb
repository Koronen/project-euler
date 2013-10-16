require_relative '../spec_helper'

require 'project_euler/problem_036'

module ProjectEuler
  describe Problem036 do
    it 'gives the correct answer' do
      Problem036.answer.must_equal 872187
    end
  end
end
