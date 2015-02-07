require 'spec_helper'

require 'project_euler/problem_039'

module ProjectEuler
  describe Problem039 do
    it 'gives the correct answer' do
      Problem039.answer.must_equal 840
    end
  end
end
