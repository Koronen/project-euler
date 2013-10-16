require_relative '../spec_helper'

require 'project_euler/problem_017'

module ProjectEuler
  describe Problem017 do
    it 'gives the correct answer' do
      Problem017.answer.must_equal 21124
    end
  end
end
