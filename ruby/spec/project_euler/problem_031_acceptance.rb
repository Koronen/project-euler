require_relative '../spec_helper'

require 'project_euler/problem_031'

module ProjectEuler
  describe Problem031 do
    it 'gives the correct answer' do
      Problem031.answer.must_equal 73682
    end
  end
end
