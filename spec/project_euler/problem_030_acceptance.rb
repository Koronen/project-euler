require 'spec_helper'

require 'project_euler/problem_030'

module ProjectEuler
  describe Problem030 do
    it 'gives the correct answer' do
      Problem030.answer.must_equal 443839
    end
  end
end
