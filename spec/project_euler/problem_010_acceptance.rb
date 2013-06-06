require_relative '../spec_helper'

require 'project_euler/problem_010'

module ProjectEuler
  describe Problem010 do
    it 'gives the correct answer' do
      Problem010.answer.must_equal 142913828922
    end
  end
end
