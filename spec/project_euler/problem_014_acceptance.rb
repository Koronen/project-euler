require 'spec_helper'

require 'project_euler/problem_014'

module ProjectEuler
  describe Problem014 do
    it 'gives the correct answer' do
      Problem014.answer.must_equal 837799
    end
  end
end
