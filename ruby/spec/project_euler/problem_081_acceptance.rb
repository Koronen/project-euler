require 'spec_helper'

require 'project_euler/problem_081'

module ProjectEuler
  describe Problem081 do
    it 'gives the correct answer' do
      Problem081.answer.must_equal 427337
    end
  end
end
