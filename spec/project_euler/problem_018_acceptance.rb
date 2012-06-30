require 'spec_helper'

require 'project_euler/problem_018'

module ProjectEuler
  describe Problem018 do
    it 'gives the correct answer' do
      Problem018.answer.must_equal 1074
    end
  end
end
