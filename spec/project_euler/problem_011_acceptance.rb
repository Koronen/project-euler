require_relative '../spec_helper'

require 'project_euler/problem_011'

module ProjectEuler
  describe Problem011 do
    it 'gives the correct answer' do
      Problem011.answer.must_equal 70600674
    end
  end
end
