require 'spec_helper'

require 'project_euler/problem_025'

module ProjectEuler
  describe Problem025 do
    it 'gives the correct answer' do
      Problem025.answer.must_equal 4782
    end
  end
end
