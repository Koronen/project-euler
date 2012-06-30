require 'spec_helper'

require 'project_euler/problem_012'

module ProjectEuler
  describe Problem012 do
    it 'gives the correct answer' do
      Problem012.answer.must_equal 76576500
    end
  end
end
