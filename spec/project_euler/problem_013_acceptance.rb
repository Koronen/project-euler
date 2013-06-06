require_relative '../spec_helper'

require 'project_euler/problem_013'

module ProjectEuler
  describe Problem013 do
    it 'gives the correct answer' do
      Problem013.answer.must_equal 5537376230
    end
  end
end
